.class public Lcn/apppark/vertify/activity/buy/BuyOrderDetail;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CANCEL_ORDER_WHAT:I

.field private final DELETE_ORDER_WHAT:I

.field private final GETDETAIL_WHAT:I

.field private final METHOD_CANCEL_ORDER:Ljava/lang/String;

.field private final METHOD_GETDETAIL:Ljava/lang/String;

.field private final METHOD_RECEIVE:Ljava/lang/String;

.field private final RECEIVE_DATA:I

.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

.field private addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

.field private btn_back:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_comment:Landroid/widget/Button;

.field private btn_delete:Landroid/widget/Button;

.field private btn_mail:Landroid/widget/Button;

.field private btn_payonline:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private currentPage:I

.field private handler:Ldw;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private ll_bottom:Landroid/widget/LinearLayout;

.field private ll_resaon:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadDialog:Landroid/app/Dialog;

.field private orderId:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

.field private rel_payweixin:Landroid/widget/RelativeLayout;

.field private rel_payzhifubao:Landroid/widget/RelativeLayout;

.field private tv_address:Landroid/widget/TextView;

.field private tv_note:Landroid/widget/TextView;

.field private tv_ordernumber:Landroid/widget/TextView;

.field private tv_orderstate:Landroid/widget/TextView;

.field private tv_pay_weixin:Landroid/widget/TextView;

.field private tv_paytype:Landroid/widget/TextView;

.field private tv_payzhifubao:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;

.field private tv_reason:Landroid/widget/TextView;

.field private tv_receiver:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_totalnumber:Landroid/widget/TextView;

.field private tv_totalprice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "order"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->METHOD_GETDETAIL:Ljava/lang/String;

    const-string v0, "cancelOrder"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->METHOD_CANCEL_ORDER:Ljava/lang/String;

    const-string v0, "receipt"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->METHOD_RECEIVE:Ljava/lang/String;

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->GETDETAIL_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->CANCEL_ORDER_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->DELETE_ORDER_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->RECEIVE_DATA:I

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Lcn/apppark/mcd/vo/buy/BuyAddressVo;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Lcn/apppark/mcd/vo/buy/BuyOrderVo;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getZFBServiceState(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ldw;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getZFBSign(I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->deleteOrder(I)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private cancelOrder(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "reason"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "cancelOrder"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->receiveData(I)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deleteOrder(I)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v2, "10185912"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/apppark/vertify/network/request/HttpPostRequestPool;

    const-string v2, "http://www.apppark.cn/apliay_deleteOrder.action"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->currentPage:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->currentPage:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "order"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getZFBServiceState(I)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v2, "10185912"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/apppark/vertify/network/request/HttpPostRequestPool;

    const-string v2, "http://www.apppark.cn/apliay_order.action"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getZFBSign(I)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v2, "10185912"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map......."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcn/apppark/vertify/network/request/HttpPostRequestPool;

    const-string v2, "http://www.apppark.cn/apliay_sign.action"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_phone:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_address:Landroid/widget/TextView;

    return-object v0
.end method

.method private initWidget()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0a006c

    const/16 v3, 0x8

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_bottom:Landroid/widget/LinearLayout;

    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_delete:Landroid/widget/Button;

    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_mail:Landroid/widget/Button;

    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_cancel:Landroid/widget/Button;

    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_comment:Landroid/widget/Button;

    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_sure:Landroid/widget/Button;

    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_payonline:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_mail:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_comment:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_payonline:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_delete:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_mail:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_cancel:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_comment:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_sure:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_payonline:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_mail:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_comment:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_payonline:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0a006b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f0a006a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_ordernumber:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_time:Landroid/widget/TextView;

    const v1, 0x7f0a006d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_note:Landroid/widget/TextView;

    const v1, 0x7f0a006f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_reason:Landroid/widget/TextView;

    const v1, 0x7f0a006e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_resaon:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_resaon:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_phone:Landroid/widget/TextView;

    const v0, 0x7f0a0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_address:Landroid/widget/TextView;

    const v0, 0x7f0a0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_receiver:Landroid/widget/TextView;

    const v0, 0x7f0a0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_paytype:Landroid/widget/TextView;

    const v0, 0x7f0a0071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_totalprice:Landroid/widget/TextView;

    const v0, 0x7f0a0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_totalnumber:Landroid/widget/TextView;

    const v0, 0x7f0a0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payzhifubao:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payweixin:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_payzhifubao:Landroid/widget/TextView;

    const v0, 0x7f0a007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_pay_weixin:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payzhifubao:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payweixin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_receiver:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->updateState()V

    return-void
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic p(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic q(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private receiveData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "groupId"

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->itemList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "receipt"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updateState()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_ordernumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_note:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getClinchTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_totalprice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " \uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_totalnumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getTotalNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u5546\u54c1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getType()I

    move-result v0

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_OFFLINE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_paytype:Landroid/widget/TextView;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payweixin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payzhifubao:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_paytype:Landroid/widget/TextView;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->rel_payzhifubao:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_reason:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_resaon:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getType()I

    move-result v0

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_ONLINE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_mail:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_comment:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_orderstate:Landroid/widget/TextView;

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->btn_payonline:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public cancel(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    const-string v1, "\u786e\u5b9a\u53d6\u6d88\u8be5\u8ba2\u5355?"

    new-instance v2, Ldr;

    invoke-direct {v2, p0}, Ldr;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public checkExistZFB(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldt;

    invoke-direct {v1, p0}, Ldt;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v0, "remark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->cancelOrder(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f020104

    const v1, 0x7f0200f0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    const-string v1, "\u786e\u8ba4\u5220\u9664\u8be5\u8ba2\u5355?"

    new-instance v2, Ldu;

    invoke-direct {v2, p0}, Ldu;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getLogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const-string v2, "\u67e5\u7269\u6d41"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "urlStr"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getLogisticUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u7269\u6d41\u4fe1\u606f"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    const-string v1, "\u786e\u8ba4\u6536\u8d27?"

    new-instance v2, Ldv;

    invoke-direct {v2, p0}, Ldv;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->checkExistZFB(I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_payzhifubao:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_pay_weixin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_payzhifubao:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->tv_pay_weixin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a005c -> :sswitch_0
        0x7f0a005f -> :sswitch_2
        0x7f0a0060 -> :sswitch_3
        0x7f0a0061 -> :sswitch_6
        0x7f0a0062 -> :sswitch_5
        0x7f0a0063 -> :sswitch_4
        0x7f0a0064 -> :sswitch_1
        0x7f0a0077 -> :sswitch_7
        0x7f0a007a -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f080024

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->setContentView(I)V

    invoke-static {p0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orderstatus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderStatus:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->orderStatus:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->finish()V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Ldw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldw;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ldr;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->handler:Ldw;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->initWidget()V

    invoke-direct {p0, v2, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const-string v1, "255"

    invoke-virtual {v0, v3, v2, v2, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public payZFB(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    const-string v1, "+"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sign=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&sign_type=\"RSA\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lds;

    invoke-direct {v2, p0, v0, p1}, Lds;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
