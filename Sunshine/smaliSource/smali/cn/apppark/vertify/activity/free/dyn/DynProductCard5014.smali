.class public Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# instance fields
.field private final GET_WHAT:I

.field private final REF_DATA:I

.field private TYPE_DEFAULT:I

.field private TYPE_HOT:I

.field private TYPE_PRICE_DOWN:I

.field private TYPE_PRICE_UP:I

.field private TYPE_SELL:I

.field private adapter:Lcn/apppark/vertify/adapter/DynProduct5014Adapter;

.field private btn_all:Landroid/widget/Button;

.field private btn_hot:Landroid/widget/Button;

.field private btn_price:Landroid/widget/Button;

.field private btn_search:Landroid/widget/Button;

.field private btn_sell:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private et_keyWord:Lcn/apppark/mcd/widget/MyEditText;

.field private handler:Liu;

.field private img_line:Landroid/widget/ImageView;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

.field private keyWord:Ljava/lang/String;

.field private listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

.field private ll_searchType:Landroid/widget/LinearLayout;

.field private loadDialog:Landroid/app/Dialog;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private searchType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->GET_WHAT:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->REF_DATA:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemList:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    const-string v0, ""

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->keyWord:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_DEFAULT:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_PRICE_UP:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_PRICE_DOWN:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_HOT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_SELL:I

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Liu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liu;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;Lir;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->handler:Liu;

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_DEFAULT:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initWidget()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Lcn/apppark/mcd/widget/MyEditText;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->et_keyWord:Lcn/apppark/mcd/widget/MyEditText;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;Lcn/apppark/vertify/adapter/DynProduct5014Adapter;)Lcn/apppark/vertify/adapter/DynProduct5014Adapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->adapter:Lcn/apppark/vertify/adapter/DynProduct5014Adapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->keyWord:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeBarState()V
    .locals 2

    const v1, -0x777778

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_all:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_hot:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_sell:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_price:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sortId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getInterfaces()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "orderBy"

    iget v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keyword"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->keyWord:Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->handler:Liu;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "products_sd"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Lcn/apppark/vertify/adapter/DynProduct5014Adapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->adapter:Lcn/apppark/vertify/adapter/DynProduct5014Adapter;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)Lcn/apppark/mcd/vo/dyn/DynProductVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    return-object v0
.end method

.method private initWidget()V
    .locals 6

    const/16 v3, 0x8

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a01f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->ll_searchType:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->img_line:Landroid/widget/ImageView;

    const-string v0, "0"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_showSearchBar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->ll_searchType:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a01f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_search:Landroid/widget/Button;

    const v0, 0x7f0a01f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_all:Landroid/widget/Button;

    const v0, 0x7f0a01f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_hot:Landroid/widget/Button;

    const v0, 0x7f0a01f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_sell:Landroid/widget/Button;

    const v0, 0x7f0a01f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_price:Landroid/widget/Button;

    const v0, 0x7f0a01f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->et_keyWord:Lcn/apppark/mcd/widget/MyEditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->et_keyWord:Lcn/apppark/mcd/widget/MyEditText;

    new-instance v2, Lir;

    invoke-direct {v2, p0}, Lir;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/MyEditText;->setListener(Lcn/apppark/mcd/widget/MyEditText$MyEditTextClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_search:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_all:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_hot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_sell:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_price:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcn/apppark/mcd/util/FunctionPublic;->setDevider(Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Lis;

    invoke-direct {v1, p0}, Lis;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Lit;

    invoke-direct {v1, p0}, Lit;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_enableScroll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setScroll(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    return v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->getData(II)V

    return-void
.end method


# virtual methods
.method public checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v0, p2, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "retFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retMsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v2, p2, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->getData(II)V

    return-void
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFail(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/high16 v2, -0x1000000

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->et_keyWord:Lcn/apppark/mcd/widget/MyEditText;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->keyWord:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_DEFAULT:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->changeBarState()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_all:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_all:Landroid/widget/Button;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_HOT:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->changeBarState()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_hot:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_SELL:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->changeBarState()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_sell:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    iget v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_PRICE_UP:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_PRICE_DOWN:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_price:Landroid/widget/Button;

    const-string v1, "\u4ef7\u683c \u2193"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->changeBarState()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_price:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->btn_price:Landroid/widget/Button;

    const-string v1, "\u4ef7\u683c \u2191"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->TYPE_PRICE_UP:I

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->searchType:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->initData()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01f4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
