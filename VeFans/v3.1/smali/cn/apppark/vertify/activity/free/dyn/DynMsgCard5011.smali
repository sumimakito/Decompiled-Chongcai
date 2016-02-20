.class public Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;
.super Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# static fields
.field private static final GET_WHAT:I = 0x1

.field private static final REF_DATA:I = 0x2


# instance fields
.field private adapter:Lcn/apppark/vertify/adapter/DynMsg5011Adapter;

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private firstItemIndex:I

.field private handler:Lhc;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->firstItemIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v0, Lhc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhc;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;Lha;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->handler:Lhc;

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setCacheColorHint(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0, p4}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    new-instance v0, Lha;

    invoke-direct {v0, p0}, Lha;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lhb;

    invoke-direct {v0, p0}, Lhb;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineBgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineBgPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_rowLineHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setDevider(Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;Lcn/apppark/vertify/adapter/DynMsg5011Adapter;)Lcn/apppark/vertify/adapter/DynMsg5011Adapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->adapter:Lcn/apppark/vertify/adapter/DynMsg5011Adapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemListTemp:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemListTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)Lcn/apppark/vertify/adapter/DynMsg5011Adapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->adapter:Lcn/apppark/vertify/adapter/DynMsg5011Adapter;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)Lcn/apppark/mcd/vo/dyn/DynMsgListVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    return v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getInterfaces()Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->handler:Lhc;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "list"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->getData(II)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->getData(II)V

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

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
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

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->adapter:Lcn/apppark/vertify/adapter/DynMsg5011Adapter;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->firstItemIndex:I

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
