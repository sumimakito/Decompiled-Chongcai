.class public Lcn/apppark/vertify/activity/buy/BuyProCommentList2;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INIT_DATA:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "commentList"


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

.field private btn_all:Landroid/widget/Button;

.field private btn_back:Landroid/widget/Button;

.field private btn_bad:Landroid/widget/Button;

.field private btn_center:Landroid/widget/Button;

.field private btn_good:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Leq;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private list:Lcn/apppark/mcd/widget/PullDownListView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private productId:Ljava/lang/String;

.field private tempList_bad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private tempList_center:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private tempList_good:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private tv_all:Landroid/widget/TextView;

.field private tv_bad:Landroid/widget/TextView;

.field private tv_center:Landroid/widget/TextView;

.field private tv_good:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_good:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_center:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_bad:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_good:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_center:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_bad:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->productId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x3e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->handler:Leq;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "commentList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_all:Landroid/widget/TextView;

    const v0, 0x7f0a00e1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_good:Landroid/widget/TextView;

    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_center:Landroid/widget/TextView;

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_bad:Landroid/widget/TextView;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_all:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_good:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_center:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_bad:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setHeaderDividersEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lep;

    invoke-direct {v1, p0}, Lep;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;)Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x8

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    const v2, 0x7f0201a3

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_all:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_good:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_center:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_bad:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_all:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v5, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_good:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v5, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_good:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_center:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v5, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_center:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_all:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_good:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_center:Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->btn_bad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tv_bad:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v5, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->tempList_bad:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->list:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyProComment2Adapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0049 -> :sswitch_0
        0x7f0a00de -> :sswitch_1
        0x7f0a00e0 -> :sswitch_2
        0x7f0a00e2 -> :sswitch_3
        0x7f0a00e4 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->productId:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Leq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leq;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList2;Lep;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->handler:Leq;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->initWidget()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;->getData(II)V

    return-void
.end method
