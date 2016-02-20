.class public Lcn/apppark/vertify/activity/buy/BuyProCommentList;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final INIT_DATA_NOREPLAY:I

.field private final INIT_DATA_REPLAY:I

.field public final METHOD:Ljava/lang/String;

.field private adapter_noreplay:Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

.field private adapter_replay:Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Lel;

.field private itemList_noreplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemList_replay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyProCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

.field private list_replay:Lcn/apppark/mcd/widget/PullDownListView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private rel_comment:Landroid/widget/RelativeLayout;

.field private rel_nocomment:Landroid/widget/RelativeLayout;

.field private rel_noreplay:Landroid/widget/RelativeLayout;

.field private rel_replay:Landroid/widget/RelativeLayout;

.field private tv_comment:Landroid/widget/TextView;

.field private tv_linecomment:Landroid/widget/TextView;

.field private tv_linenocomment:Landroid/widget/TextView;

.field private tv_nocomment:Landroid/widget/TextView;

.field private tv_noreplay:Landroid/widget/TextView;

.field private tv_replay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "commentByUser"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->METHOD:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->INIT_DATA_NOREPLAY:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->INIT_DATA_REPLAY:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->adapter_noreplay:Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->itemList_noreplay:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentList;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->adapter_replay:Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->itemList_replay:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->itemList_replay:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->itemList_noreplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_replay:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_noreplay:Landroid/widget/TextView;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->handler:Lel;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "commentByUser"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->adapter_noreplay:Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method private initWidget()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_comment:Landroid/widget/TextView;

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_nocomment:Landroid/widget/TextView;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linecomment:Landroid/widget/TextView;

    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linenocomment:Landroid/widget/TextView;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linecomment:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linenocomment:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_comment:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_nocomment:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_comment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_nocomment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_replay:Landroid/widget/TextView;

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_noreplay:Landroid/widget/TextView;

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setDividerHeight(I)V

    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_replay:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_noreplay:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Leh;

    invoke-direct {v1, p0}, Leh;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lei;

    invoke-direct {v1, p0}, Lei;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V

    invoke-virtual {v0, v1, v3}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lej;

    invoke-direct {v1, p0}, Lej;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lek;

    invoke-direct {v1, p0}, Lek;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)V

    invoke-virtual {v0, v1, v3}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/buy/BuyProCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->adapter_replay:Lcn/apppark/vertify/activity/buy/adapter/BuyProCommentAdapter;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->autoHeadRefresh()V

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->getData(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->autoHeadRefresh()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->getData(II)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v4, -0x777778

    const/high16 v3, -0x1000000

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_replay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_noreplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linecomment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linenocomment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_comment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_nocomment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->itemList_replay:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->getData(II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_replay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->list_noreplay:Lcn/apppark/mcd/widget/PullDownListView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_replay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->rel_noreplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linecomment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_linenocomment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_comment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->tv_nocomment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0049 -> :sswitch_0
        0x7f0a00d2 -> :sswitch_2
        0x7f0a00d5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lel;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentList;Leh;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->handler:Lel;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->initWidget()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/buy/BuyProCommentList;->getData(II)V

    return-void
.end method
