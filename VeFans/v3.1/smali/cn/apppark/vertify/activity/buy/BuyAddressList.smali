.class public Lcn/apppark/vertify/activity/buy/BuyAddressList;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;


# static fields
.field private static final DEL_DATA:I = 0x3

.field private static final INIT_DATA:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "contacts"

.field public static final METHOD_DEL:Ljava/lang/String; = "deleteContact"

.field private static final REF_DATA:I = 0x2


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

.field private addressType:I

.field private btn_back:Landroid/widget/Button;

.field private btn_eidt:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentDelPositon:I

.field private currentPage:I

.field private handler:Lbt;

.field private isEdit:Z

.field private isFinish:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyAddressVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyAddressVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/SwipeListView;

.field private ll_add:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isFinish:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isEdit:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentDelPositon:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isEdit:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyAddressList;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isFinish:Z

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isEdit:Z

    return v0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u6536\u8d27\u5730\u5740"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/SwipeListView;->onFootNodata(II)V

    goto :goto_0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_eidt:Landroid/widget/Button;

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

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->handler:Lbt;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "deleteContact"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->addressType:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/SwipeListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->listView:Lcn/apppark/mcd/widget/SwipeListView;

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

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->handler:Lbt;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "contacts"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_eidt:Landroid/widget/Button;

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->ll_add:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/SwipeListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->ll_add:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddressList$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddressList$2;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList$2;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_eidt:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList$3;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    new-instance v1, Lbs;

    invoke-direct {v1, p0}, Lbs;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    return v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->checkResult()V

    return-void
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentDelPositon:I

    return v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isEdit:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_eidt:Landroid/widget/Button;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getData(II)V

    return-void
.end method


# virtual methods
.method public del()V
    .locals 2

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isFinish:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isFinish:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->itemList:Ljava/util/ArrayList;

    iget v1, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentDelPositon:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->delData(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->isEdit:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->btn_eidt:Landroid/widget/Button;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getData(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f080024

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addressType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->addressType:I

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->loadDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lbt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbt;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;Lcn/apppark/vertify/activity/buy/BuyAddressList$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->handler:Lbt;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->currentPage:I

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyAddressList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const-string v1, "255"

    invoke-virtual {v0, v4, v3, v3, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    return-void
.end method
