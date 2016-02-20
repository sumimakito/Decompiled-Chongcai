.class public Lcn/apppark/vertify/activity/buy/BuyMyOrderList;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEL_DATA:I = 0x3

.field private static final INIT_DATA:I = 0x1

.field public static final METHOD_DEL:Ljava/lang/String; = "cancelOrder"

.field public static final METHOD_ORDERLIST:Ljava/lang/String; = "orderList"


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentDelPositon:I

.field private currentPage:I

.field private handler:Ldo;

.field private isFinish:Z

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

.field private listView:Lcn/apppark/mcd/widget/PullDownListView;

.field private ll_null:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->isFinish:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->delData(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->isFinish:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->context:Landroid/content/Context;

    return-object v0
.end method

.method private changeTipState()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->ll_null:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->ll_null:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private delData(Ljava/lang/String;I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->handler:Ldo;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "cancelOrder"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentDelPositon:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

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

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const-string v2, "10"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isNew"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->handler:Ldo;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "orderList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->ll_null:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->ll_null:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Ldj;

    invoke-direct {v1, p0}, Ldj;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Ldk;

    invoke-direct {v1, p0}, Ldk;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Ldl;

    invoke-direct {v1, p0}, Ldl;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->checkResult()V

    return-void
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->ll_null:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->ll_null:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private refData()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getData(II)V

    return-void
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public del(Ljava/lang/String;I)V
    .locals 3

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->isFinish:Z

    if-eqz v0, :cond_0

    iput p2, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentDelPositon:I

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcn/apppark/ckj10185912/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\u8be5\u8ba2\u5355? "

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Ldn;

    invoke-direct {v2, p0}, Ldn;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Ldm;

    invoke-direct {v2, p0}, Ldm;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->listView:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->autoHeadRefresh()V

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getData(II)V

    :cond_0
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
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a007e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f080024

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->setContentView(I)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {v0, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Ldo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldo;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ldj;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->handler:Ldo;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->initWidget()V

    invoke-direct {p0, v2, v2}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const-string v1, "255"

    invoke-virtual {v0, v3, v2, v2, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method
