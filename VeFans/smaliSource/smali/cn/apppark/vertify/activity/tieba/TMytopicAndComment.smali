.class public Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_COMMENT_WHAT:I

.field private final GET_TOPIC_WHAT:I

.field private final PAGE_CHANGE:I

.field private adapter_myComment:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

.field private adapter_myTopic:Lcn/apppark/vertify/adapter/TMyTopicAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentFacePage:I

.field private currentPage_myComment:I

.field private currentPage_myTopic:I

.field private handler:Lsh;

.field private itemList_myComment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCommentVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemList_myTopic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyTopicVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

.field private listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tv_comment:Landroid/widget/TextView;

.field private tv_lineComment:Landroid/widget/TextView;

.field private tv_lineTopic:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_topic:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->GET_TOPIC_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->GET_COMMENT_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->PAGE_CHANGE:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myTopic:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myTopic:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myComment:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myComment:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->pageViews:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myTopic:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentFacePage:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->getMyTopic(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->checkResult(Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->setTopicData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->getMyComment(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->setCommentData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myTopic:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkResult(Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/mcd/widget/PullDownListView4;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myComment:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lsh;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->handler:Lsh;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentFacePage:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_topic:Landroid/widget/TextView;

    return-object v0
.end method

.method private getMyComment(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->handler:Lsh;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getMyComment"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getMyTopic(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->handler:Lsh;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getMyTopic"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_comment:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_lineTopic:Landroid/widget/TextView;

    return-object v0
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u4e3b\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lsh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsh;-><init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Lsd;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->handler:Lsh;

    const v0, 0x7f0a03ea

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->viewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0a03e5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_topic:Landroid/widget/TextView;

    const v0, 0x7f0a03e6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_comment:Landroid/widget/TextView;

    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_lineTopic:Landroid/widget/TextView;

    const v0, 0x7f0a03e9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_lineComment:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_topic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_comment:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lsd;

    invoke-direct {v1, p0}, Lsd;-><init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lse;

    invoke-direct {v1, p0}, Lse;-><init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lsf;

    invoke-direct {v1, p0}, Lsf;-><init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->pageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->pageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/apppark/vertify/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcn/apppark/vertify/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lsg;

    invoke-direct {v1, p0}, Lsg;-><init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->tv_lineComment:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/vertify/adapter/TMyTopicAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myTopic:Lcn/apppark/vertify/adapter/TMyTopicAdapter;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/vertify/adapter/TMyCommentAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myComment:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    return-object v0
.end method

.method private setCommentData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCommentVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myComment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myComment:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myComment:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myComment:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myComment:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myComment:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myComment:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myComment:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myComment:Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMyCommentAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setTopicData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyTopicVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myTopic:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myTopic:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myTopic:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myTopic:Lcn/apppark/vertify/adapter/TMyTopicAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/adapter/TMyTopicAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->itemList_myTopic:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/adapter/TMyTopicAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myTopic:Lcn/apppark/vertify/adapter/TMyTopicAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->listView_myTopic:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myTopic:Lcn/apppark/vertify/adapter/TMyTopicAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->adapter_myTopic:Lcn/apppark/vertify/adapter/TMyTopicAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMyTopicAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a03ac -> :sswitch_0
        0x7f0a03e5 -> :sswitch_1
        0x7f0a03e6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->currentPage_myTopic:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->getMyTopic(II)V

    return-void
.end method
