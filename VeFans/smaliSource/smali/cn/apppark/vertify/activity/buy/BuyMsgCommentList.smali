.class public Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;


# static fields
.field private static final GET_WHAT:I = 0x1

.field private static final METHOD:Ljava/lang/String; = "replyList"

.field private static final REF_DATA:I = 0x3


# instance fields
.field private adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private handler:Lcu;

.field private id:Ljava/lang/String;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcn/apppark/mcd/widget/PullDownListView3;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private tempItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->currentPage:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->tempItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->getData(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->checkResult(Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->currentPage:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkResult(Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/mcd/widget/PullDownListView3;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynCommentReturnVo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/PullDownListView3;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->adapter:Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->tempItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getData(IILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    const-string v2, "10185912"

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->handler:Lcu;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "replyList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->currentPage:I

    return v0
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView3;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lcr;

    invoke-direct {v1, p0}, Lcr;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView3;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnRefreshListener3;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lcs;

    invoke-direct {v1, p0}, Lcs;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView3$OnFootRefreshListener3;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->listView:Lcn/apppark/mcd/widget/PullDownListView3;

    new-instance v1, Lct;

    invoke-direct {v1, p0}, Lct;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->initWidget()V

    new-instance v0, Lcu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcu;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->handler:Lcu;

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->currentPage:I

    const/4 v1, 0x1

    const-string v2, "replyList"

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->getData(IILjava/lang/String;)V

    return-void
.end method
