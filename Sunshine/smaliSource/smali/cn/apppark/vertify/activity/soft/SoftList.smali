.class public Lcn/apppark/vertify/activity/soft/SoftList;
.super Landroid/app/Activity;


# static fields
.field private static final method_must:Ljava/lang/String; = "subjectApp"

.field private static final must_ref_what:I = 0x6

.field private static final must_what:I = 0x5


# instance fields
.field private adapter_must:Lcn/apppark/vertify/adapter/SoftAdapter;

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage_must:I

.field private handler:Lrl;

.field private itemList_must:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView_must:Lcn/apppark/mcd/widget/PullDownListView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private subjectId:Ljava/lang/String;

.field private tempItemList_must:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->itemList_must:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->currentPage_must:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftList;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->currentPage_must:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftList;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->currentPage_must:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftList;->adapter_must:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftList;->tempItemList_must:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftList;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/soft/SoftList;->getData(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/soft/SoftList;->checkResult(Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->itemList_must:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/SoftList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/SoftList;->itemList_must:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method private checkResult(Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/mcd/widget/PullDownListView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
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

    check-cast v0, Lcn/apppark/mcd/vo/free/SoftReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SoftReturnVo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1, v1}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->adapter_must:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->tempItemList_must:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/soft/SoftList;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->currentPage_must:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/soft/SoftList;->currentPage_must:I

    return v0
.end method

.method private getData(IILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subjectId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftList;->subjectId:Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/SoftList;->handler:Lrl;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/ad.ws"

    move v1, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/soft/SoftList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/SoftList$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/SoftList$1;-><init>(Lcn/apppark/vertify/activity/soft/SoftList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a040e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lri;

    invoke-direct {v1, p0}, Lri;-><init>(Lcn/apppark/vertify/activity/soft/SoftList;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lrj;

    invoke-direct {v1, p0}, Lrj;-><init>(Lcn/apppark/vertify/activity/soft/SoftList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lrk;

    invoke-direct {v1, p0}, Lrk;-><init>(Lcn/apppark/vertify/activity/soft/SoftList;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftList;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/soft/SoftList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subjectid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->subjectId:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/SoftList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/soft/SoftList;->initWidget()V

    new-instance v0, Lrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrl;-><init>(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/vertify/activity/soft/SoftList$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->handler:Lrl;

    iget v0, p0, Lcn/apppark/vertify/activity/soft/SoftList;->currentPage_must:I

    const/4 v1, 0x5

    const-string v2, "subjectApp"

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/soft/SoftList;->getData(IILjava/lang/String;)V

    return-void
.end method
