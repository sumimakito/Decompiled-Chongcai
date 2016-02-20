.class public Lcn/apppark/vertify/activity/tieba/TMsg;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_WHAT:I

.field private adapter:Lcn/apppark/vertify/adapter/TMsgAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_edit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private handler:Lrr;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyMsgVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/PullDownListView4;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private rel_menu:Landroid/widget/RelativeLayout;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->GET_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->context:Landroid/content/Context;

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMsg;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMsg;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/tieba/TMsg;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/tieba/TMsg;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/tieba/TMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/tieba/TMsg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/tieba/TMyMsgVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/tieba/TMsg;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/tieba/TMsg;)Lcn/apppark/vertify/adapter/TMsgAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->adapter:Lcn/apppark/vertify/adapter/TMsgAdapter;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/tieba/TMsg;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/tieba/TMsg;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMsg;->checkResult()V

    return-void
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMsg;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tiebaId"

    sget-object v2, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->handler:Lrr;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/tieba/TMsg;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "msgList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->btn_edit:Landroid/widget/Button;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u56de\u590d\u6211\u7684"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->btn_edit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnRefreshListener4;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lrp;

    invoke-direct {v1, p0}, Lrp;-><init>(Lcn/apppark/vertify/activity/tieba/TMsg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lrq;

    invoke-direct {v1, p0}, Lrq;-><init>(Lcn/apppark/vertify/activity/tieba/TMsg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyMsgVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->currentPage:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->adapter:Lcn/apppark/vertify/adapter/TMsgAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/adapter/TMsgAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/adapter/TMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->adapter:Lcn/apppark/vertify/adapter/TMsgAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->adapter:Lcn/apppark/vertify/adapter/TMsgAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->adapter:Lcn/apppark/vertify/adapter/TMsgAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TMsgAdapter;->notifyDataSetChanged()V

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
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/tieba/TMsg;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03ac
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/tieba/TMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lrr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrr;-><init>(Lcn/apppark/vertify/activity/tieba/TMsg;Lrp;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->handler:Lrr;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMsg;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TMsg;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/tieba/TMsg;->currentPage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/tieba/TMsg;->getData(II)V

    return-void
.end method
