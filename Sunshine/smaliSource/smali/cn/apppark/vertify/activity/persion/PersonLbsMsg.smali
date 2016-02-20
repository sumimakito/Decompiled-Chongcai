.class public Lcn/apppark/vertify/activity/persion/PersonLbsMsg;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_WHAT:I

.field private adapter:Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

.field private btn_back:Landroid/widget/Button;

.field private btn_edit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private handler:Lpa;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/LBSReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/PullDownListView4;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->GET_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->context:Landroid/content/Context;

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->getMsgList(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method private checkResult()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080027

    const/4 v2, 0x1

    const-string v3, "255"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Loz;

    invoke-direct {v1, p0}, Loz;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-static {}, Lcn/apppark/mcd/util/PublicUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateLastPushMsgTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/LBSReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/LBSReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->adapter:Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Loz;

    invoke-direct {v1, p0}, Loz;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->checkResult()V

    return-void
.end method

.method private getMsgList(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->handler:Lpa;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "getMyMsg"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0447

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->btn_edit:Landroid/widget/Button;

    const v0, 0x7f0a0446

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u7cfb\u7edf\u901a\u77e5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->btn_edit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->setDividerHeight(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView4;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnRefreshListener4;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lox;

    invoke-direct {v1, p0}, Lox;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Loy;

    invoke-direct {v1, p0}, Loy;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

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
            "Lcn/apppark/mcd/vo/free/LBSReturnVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->currentPage:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->adapter:Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->adapter:Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->listView:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->adapter:Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->adapter:Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setLoadInterface()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Loz;

    invoke-direct {v1, p0}, Loz;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
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
    sget v0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_PUSH_MSG:I

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0447
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lpa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpa;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;Lox;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->handler:Lpa;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->initWidget()V

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->currentPage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->getMsgList(II)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v0, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;->REQUEST_PUSH_MSG:I

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
