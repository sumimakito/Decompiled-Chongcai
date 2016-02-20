.class public Lcn/apppark/vertify/activity/tieba/TMyCollection;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DEL_WHAT:I

.field private final GET_WHAT:I

.field private adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentDelPos:I

.field private currentPage:I

.field private handler:Lrx;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/SwipeListView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->GET_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->DEL_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyCollection;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyCollection;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentDelPos:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyCollection;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->getMyCollection(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyCollection;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->delCollection(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyCollection;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMyCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/SwipeListView;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/SwipeListView;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/vertify/adapter/TCollectionAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    return-object v0
.end method

.method private delCollection(ILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->handler:Lrx;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "delCollection"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->checkResult()V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getMyCollection(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->handler:Lrx;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getCollectionList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/tieba/TMyCollection;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentDelPos:I

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/tieba/TMyCollection;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a037f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/SwipeListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    new-instance v1, Lru;

    invoke-direct {v1, p0}, Lru;-><init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setOnFootrefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    new-instance v1, Lrv;

    invoke-direct {v1, p0}, Lrv;-><init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentPage:I

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcn/apppark/vertify/adapter/TCollectionAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->itemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    invoke-virtual {v3}, Lcn/apppark/mcd/widget/SwipeListView;->getRightViewWidth()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/TCollectionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    new-instance v1, Lrw;

    invoke-direct {v1, p0}, Lrw;-><init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/adapter/TCollectionAdapter;->setOnRightItemClickListener(Lcn/apppark/vertify/adapter/TCollectionAdapter$onRightItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->listView:Lcn/apppark/mcd/widget/SwipeListView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->adapter:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TCollectionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03ac
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030095

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lrx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx;-><init>(Lcn/apppark/vertify/activity/tieba/TMyCollection;Lru;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->handler:Lrx;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMyCollection;->currentPage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMyCollection;->getMyCollection(II)V

    return-void
.end method
