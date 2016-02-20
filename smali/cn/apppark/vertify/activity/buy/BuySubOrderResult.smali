.class public Lcn/apppark/vertify/activity/buy/BuySubOrderResult;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INIT_DATA:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "orderList"


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentOrderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

.field private currentPage:I

.field private handler:Lfx;

.field private ids:Ljava/lang/String;

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

.field private listView:Landroid/widget/ListView;

.field private ll_success:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lfx;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->handler:Lfx;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getZFBSign(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->currentPage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->ll_success:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ids"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->ids:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->handler:Lfx;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "orderList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getZFBServiceState(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v2, "10185912"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/apppark/vertify/network/request/HttpPostRequestPool;

    const-string v2, "http://www.apppark.cn/apliay_order.action"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->handler:Lfx;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getZFBSign(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v2, "10185912"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/apppark/vertify/network/request/HttpPostRequestPool;

    const-string v2, "http://www.apppark.cn/apliay_sign.action"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->handler:Lfx;

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;-><init>(ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0123

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a0124

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->ll_success:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->currentOrderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public checkExistZFB(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfw;

    invoke-direct {v1, p0}, Lfw;-><init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0123
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f080024

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->ids:Ljava/lang/String;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lfx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfx;-><init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Lfv;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->handler:Lfx;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->initWidget()V

    invoke-direct {p0, v2, v2}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const-string v1, "255"

    invoke-virtual {v0, v3, v2, v2, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method

.method public payOnline(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->currentOrderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->currentOrderVo:Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->checkExistZFB(I)V

    :cond_0
    return-void
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

    new-instance v2, Lfv;

    invoke-direct {v2, p0, v0, p1}, Lfv;-><init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
