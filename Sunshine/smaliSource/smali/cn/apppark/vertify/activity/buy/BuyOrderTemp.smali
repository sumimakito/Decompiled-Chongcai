.class public Lcn/apppark/vertify/activity/buy/BuyOrderTemp;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final GET_ORDERS_WHAT:I = 0x1

.field public static final METHOD_GETORDERS:Ljava/lang/String; = "tempOrders_sd"

.field public static final METHOD_SAVERDERS:Ljava/lang/String; = "commitOrder_sd"

.field private static final SAVE_ORDERS_WHAT:I = 0x2


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

.field private addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

.field private btn_back:Landroid/widget/Button;

.field private btn_subdata:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Ldz;

.field private ids:Ljava/lang/String;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private ll_address:Landroid/widget/LinearLayout;

.field private ll_tip:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadDialog:Landroid/app/Dialog;

.field private tv_address:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;

.field private tv_tip:Landroid/widget/TextView;

.field private tv_totalprice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Lcn/apppark/mcd/vo/buy/BuyAddressVo;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->getData(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->checkStore(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Lcn/apppark/mcd/vo/buy/BuyAddressVo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->setAddress(Lcn/apppark/mcd/vo/buy/BuyAddressVo;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkStore(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ldy;

    invoke-direct {v0, p0}, Ldy;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)V

    invoke-virtual {v0}, Ldy;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "outIds"

    invoke-static {p1, v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseToListByNode(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v4

    move v3, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0, v8}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->setHavaStore(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    move v4, v2

    :goto_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getOrderItem()Ljava/util/ArrayList;

    move-result-object v7

    move v5, v2

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->isHavaStore()Z

    move-result v0

    if-ne v0, v8, :cond_5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;->getStandardId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getStandardId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;->getStandardId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getStandardId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->setHavaStore(Z)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyTempOrderReasonVo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->setReason(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getData(I)V
    .locals 8

    const/4 v3, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x3e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isNew"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->handler:Ldz;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "tempOrders_sd"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initWidget()V
    .locals 4

    const/16 v3, 0x8

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a013d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->btn_subdata:Landroid/widget/Button;

    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a014d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ll_address:Landroid/widget/LinearLayout;

    const v0, 0x7f0a014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_name:Landroid/widget/TextView;

    const v0, 0x7f0a014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_phone:Landroid/widget/TextView;

    const v0, 0x7f0a0150

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_address:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_totalprice:Landroid/widget/TextView;

    const v0, 0x7f0a0139

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ll_tip:Landroid/widget/LinearLayout;

    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_tip:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ll_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->btn_subdata:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ll_address:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->listView:Landroid/widget/ListView;

    new-instance v1, Ldx;

    invoke-direct {v1, p0}, Ldx;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private saveData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"appId\":\"10185912\",  \"memberId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",  \"contactId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",  \"ids\":\"\", \"carts\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->handler:Ldz;

    const-string v3, "json"

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "commitOrder_sd"

    move v1, p3

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private setAddress(Lcn/apppark/mcd/vo/buy/BuyAddressVo;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_phone:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_address:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_phone:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_phone:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_name:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u6dfb\u52a0\u5730\u5740..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, -0x1

    sget v0, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_ADDRESS:I

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    const-string v0, "address"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->setAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->setAddress(Lcn/apppark/mcd/vo/buy/BuyAddressVo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_REMARK:I

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    const-string v0, "remark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "position"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->setRemark(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    new-instance v4, Lcn/apppark/mcd/vo/buy/BuyCarsVo;

    invoke-direct {v4}, Lcn/apppark/mcd/vo/buy/BuyCarsVo;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/vo/buy/BuyCarsVo;->setId(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/vo/buy/BuyCarsVo;->setMsg(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getIsSelPayOnLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/apppark/mcd/vo/buy/BuyCarsVo;->setType(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ids:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->addressVo:Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->saveData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "\u8bf7\u9009\u62e9\u6536\u8d27\u5730\u5740"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "addressType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->REQUEST_CODE_GET_ADDRESS:I

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0136 -> :sswitch_0
        0x7f0a013d -> :sswitch_1
        0x7f0a014d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f080024

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Ldz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldz;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderTemp;Ldx;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->handler:Ldz;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->initWidget()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->getData(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    return-void
.end method

.method public setPayType(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0, p2}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->setIsSelPayOnLine(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTotalPrice(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move v1, v2

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getTotalPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getTotalPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v3, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyTempOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2intText(Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ll_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_totalprice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->ll_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;->tv_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v3, v0

    goto :goto_1
.end method
