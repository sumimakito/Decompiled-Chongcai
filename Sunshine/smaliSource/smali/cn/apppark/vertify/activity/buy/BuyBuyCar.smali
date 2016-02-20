.class public Lcn/apppark/vertify/activity/buy/BuyBuyCar;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;


# instance fields
.field private final DEL_NUMBER:Ljava/lang/String;

.field private final DEL_WHAT:I

.field private final GET_CARLIST_WHAT:I

.field private final METHOD:Ljava/lang/String;

.field private final SAVE_CAR_NUMBER_WHAT:I

.field private final SAVE_TEMP_ORDER_METHOD:Ljava/lang/String;

.field private final SAVE_TEMP_ORDER_WHAT:I

.field private final UPDATA_NUMBER:Ljava/lang/String;

.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_caculate:Landroid/widget/Button;

.field private btn_edit:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private delPosition:I

.field private handler:Lcc;

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

.field private listView:Landroid/widget/ListView;

.field private ll_caculate:Landroid/widget/LinearLayout;

.field private ll_null:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadDialog:Landroid/app/Dialog;

.field private tv_number:Landroid/widget/TextView;

.field private tv_price:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "myShoppingCart_sd"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->METHOD:Ljava/lang/String;

    const-string v0, "updateBatchShoppingNumber_sd"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->UPDATA_NUMBER:Ljava/lang/String;

    const-string v0, "deleteShopping"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->DEL_NUMBER:Ljava/lang/String;

    const-string v0, "saveShoppingOrder_sd"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->SAVE_TEMP_ORDER_METHOD:Ljava/lang/String;

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->GET_CARLIST_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->SAVE_CAR_NUMBER_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->DEL_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->SAVE_TEMP_ORDER_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->isFinish:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->getData(II)V

    return-void
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->saveData(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->checkChange(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->isFinish:Z

    return p1
.end method

.method private add(DD)D
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_edit:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->delData(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkChange(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getOldNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->isFinish:Z

    return v0
.end method

.method private delData(Ljava/lang/String;I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->handler:Lcc;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "deleteShopping"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->saveNumber()V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->delPosition:I

    return v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x3e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->handler:Lcc;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "myShoppingCart_sd"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const/16 v2, 0x8

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->ll_null:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->ll_null:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_caculate:Landroid/widget/Button;

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_save:Landroid/widget/Button;

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_edit:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->ll_caculate:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->tv_price:Landroid/widget/TextView;

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->tv_number:Landroid/widget/TextView;

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_caculate:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_save:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyBuyCar$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->listView:Landroid/widget/ListView;

    new-instance v1, Lbz;

    invoke-direct {v1, p0}, Lbz;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->listView:Landroid/widget/ListView;

    new-instance v1, Lca;

    invoke-direct {v1, p0}, Lca;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_edit:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar$4;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_caculate:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar$5;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_save:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyBuyCar$6;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar$6;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->ll_null:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->ll_caculate:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private saveData(Ljava/lang/String;I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ids"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->handler:Lcc;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "saveShoppingOrder_sd"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private saveNumber()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, ""

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isSel()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\"id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"number\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->isFinish:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "\u9009\u62e9\u7684\u6570\u91cf\u4e0d\u80fd\u4e3a0"

    invoke-virtual {p0, v0, v3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->initToast(Ljava/lang/String;I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iput-boolean v3, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->isFinish:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->updateNumData(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private updateNumData(Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"appId\":\"10185912\",  \"memberId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",  \"carts\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->handler:Lcc;

    const-string v3, "json"

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "updateBatchShoppingNumber_sd"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public changeItemState(IZ)V
    .locals 3

    const-string v1, "-1"

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0, p2}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->setSel(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->setTotalPrice(Ljava/util/ArrayList;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->updateChangeStatus()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u5bf9\u4e0d\u8d77,\u8be5\u4ea7\u54c1\u5df2\u4e0b\u67b6"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public delCommodity(I)V
    .locals 3

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->isFinish:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->delPosition:I

    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    const-string v1, "\u786e\u5b9a\u5220\u9664\u8be5\u5546\u54c1?"

    new-instance v2, Lcb;

    invoke-direct {v2, p0}, Lcb;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f080024

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->setContentView(I)V

    invoke-virtual {p0, v3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lcc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcc;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Lcn/apppark/vertify/activity/buy/BuyBuyCar$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->handler:Lcc;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->initWidget()V

    invoke-direct {p0, v2, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    return-void
.end method

.method public setTotalPrice(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyOrderVo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    move v3, v2

    move-wide v4, v0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->isSel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-direct {p0, v4, v5, v6, v7}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->add(DD)D

    move-result-wide v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2intText(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    move-wide v4, v0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->tv_number:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u5171\u8ba1"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u4ef6\u5546\u54c1 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->tv_price:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public updateChangeStatus()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->itemList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->checkChange(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_edit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_caculate:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_edit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->btn_caculate:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
