.class public Lcn/apppark/vertify/activity/persion/PersionCollection;
.super Lcn/apppark/vertify/activity/tieba/TBBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_MSG_WHAT:I

.field private final GET_PRODUCT_WHAT:I

.field private final GET_TOPIC_WHAT:I

.field private final PAGE_CHANGE:I

.field a:Z

.field private adapter_msg:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

.field private adapter_product:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

.field private adapter_topic:Lcn/apppark/vertify/adapter/TCollectionAdapter;

.field b:Z

.field private btn_back:Landroid/widget/Button;

.field c:Z

.field private cell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private curPage_msg:I

.field private curPage_product:I

.field private curPage_topic:I

.field private currentFacePage:I

.field private handler:Lnk;

.field private item_msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private item_product:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyCollectionVo;",
            ">;"
        }
    .end annotation
.end field

.field private item_topic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

.field private list_product:Lcn/apppark/mcd/widget/PullDownListView4;

.field private list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

.field private ll_title:Landroid/widget/LinearLayout;

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

.field private rel_msg:Landroid/widget/RelativeLayout;

.field private rel_product:Landroid/widget/RelativeLayout;

.field private rel_topic:Landroid/widget/RelativeLayout;

.field private titleText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private tv_lineMsg:Landroid/widget/TextView;

.field private tv_lineProduct:Landroid/widget/TextView;

.field private tv_lineTopic:Landroid/widget/TextView;

.field private tv_msg:Landroid/widget/TextView;

.field private tv_product:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_topic:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;-><init>()V

    iput v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->GET_TOPIC_WHAT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->GET_MSG_WHAT:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->GET_PRODUCT_WHAT:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->PAGE_CHANGE:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->context:Landroid/content/Context;

    iput v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_topic:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_topic:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_msg:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_msgs:Ljava/util/ArrayList;

    iput v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_product:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_product:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->pageViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->line:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->cell:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->a:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->b:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->c:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersionCollection;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->currentFacePage:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lnk;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->handler:Lnk;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersionCollection;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getMsgCollection(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersionCollection;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->checkResult(Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersionCollection;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->setTopicData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersionCollection;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->currentFacePage:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersionCollection;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->changeMenuBgState(I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersionCollection;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getProductCollection(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersionCollection;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->setMsgCollectionData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersionCollection;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_msg:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersionCollection;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getMyTopicCollection(II)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersionCollection;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->setProductCollectionData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private changeMenuBgState(I)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->line:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->line:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private checkResult(Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/mcd/widget/PullDownListView4;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcn/apppark/mcd/vo/base/BaseReturnVo;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/BaseReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/BaseReturnVo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootNodata(II)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/PersionCollection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_msgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/PersionCollection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_product:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/PersionCollection;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_topic:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/persion/PersionCollection;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getListView()Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setHeaderDividersEnabled(Z)V

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListView4;->setFadingEdgeLength(I)V

    return-object v0
.end method

.method private getMsgCollection(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->handler:Lnk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "newsFavorites"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getMyTopicCollection(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->handler:Lnk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getCollectionList"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getProductCollection(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->handler:Lnk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "myFavorites"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/persion/PersionCollection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_topic:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method private initBaseView()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_msg:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getMsgCollection(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->line:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->cell:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_msg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_topic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getListView()Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lne;

    invoke-direct {v1, p0}, Lne;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lnf;

    invoke-direct {v1, p0}, Lnf;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->pageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_product:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getProductCollection(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_product:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->line:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineProduct:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->cell:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_product:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_product:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getListView()Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_product:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_product:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lng;

    invoke-direct {v1, p0}, Lng;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_product:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lnh;

    invoke-direct {v1, p0}, Lnh;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->pageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_product:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_topic:I

    invoke-direct {p0, v0, v3}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getMyTopicCollection(II)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->titleText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_topic:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->line:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineTopic:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->cell:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_topic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_msg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getListView()Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lni;

    invoke-direct {v1, p0}, Lni;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView4$OnFootRefreshListener4;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

    new-instance v1, Lnj;

    invoke-direct {v1, p0}, Lnj;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->pageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->ll_title:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_msg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_product:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_topic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->ll_title:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method private initTopMenu()V
    .locals 2

    const v0, 0x7f0a02cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Lnk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnk;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;Lnd;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->handler:Lnk;

    const v0, 0x7f0a02d6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0a02d4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_topic:Landroid/widget/TextView;

    const v0, 0x7f0a02d1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_product:Landroid/widget/TextView;

    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_msg:Landroid/widget/TextView;

    const v0, 0x7f0a02d5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineTopic:Landroid/widget/TextView;

    const v0, 0x7f0a02d2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineProduct:Landroid/widget/TextView;

    const v0, 0x7f0a02cf

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineMsg:Landroid/widget/TextView;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineTopic:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineProduct:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->tv_lineMsg:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02cc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->ll_title:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02d3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_topic:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_product:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02cd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->rel_msg:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->initBaseView()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/apppark/vertify/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcn/apppark/vertify/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lnd;

    invoke-direct {v1, p0}, Lnd;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/adapter/TCollectionAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_topic:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_msg:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_product:Lcn/apppark/mcd/widget/PullDownListView4;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_product:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    return-object v0
.end method

.method private setMsgCollectionData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_msgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_msg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_msg:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_msg:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_msgs:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_msg:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_msg:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_msg:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_msg:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setProductCollectionData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/buy/BuyCollectionVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_product:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_product:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_product:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_product:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_product:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_product:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_product:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_product:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_product:Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setTopicData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/tieba/TMyCollectionVo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_topic:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_topic:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->curPage_topic:I

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_topic:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/adapter/TCollectionAdapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->item_topic:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcn/apppark/vertify/adapter/TCollectionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_topic:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->list_topic:Lcn/apppark/mcd/widget/PullDownListView4;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_topic:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView4;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->adapter_topic:Lcn/apppark/vertify/adapter/TCollectionAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TCollectionAdapter;->notifyDataSetChanged()V

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
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a02cd -> :sswitch_1
        0x7f0a02d0 -> :sswitch_2
        0x7f0a02d3 -> :sswitch_3
        0x7f0a03ac -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/tieba/TBBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "haveinfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->a:Z

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "haveproduct"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->b:Z

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "havetieba"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/persion/PersionCollection;->c:Z

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->initTopMenu()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->initWidget()V

    return-void
.end method
