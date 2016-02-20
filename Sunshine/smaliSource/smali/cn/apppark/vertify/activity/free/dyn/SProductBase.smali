.class public Lcn/apppark/vertify/activity/free/dyn/SProductBase;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# instance fields
.field private final WHAT_GROUP:I

.field private final WHAT_INIT:I

.field private final WHAT_REF:I

.field private final WHAT_SCROLL:I

.field a:Landroid/view/LayoutInflater;

.field private adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

.field private btns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private countTvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:I

.field private groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

.field private groupVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;",
            ">;"
        }
    .end annotation
.end field

.field private hScrollView:Landroid/widget/HorizontalScrollView;

.field private img_bg:Lcn/apppark/mcd/widget/RemoteImageView;

.field private img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

.field private img_phone:Landroid/widget/ImageView;

.field private isForceParentScrollTop:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

.field private listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

.field private ll_type:Landroid/widget/LinearLayout;

.field private loadDialog:Landroid/app/Dialog;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private mHandler:Llh;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private rel_cellRoot:Landroid/widget/RelativeLayout;

.field private rel_msg:Landroid/widget/RelativeLayout;

.field private searchGroupId:Ljava/lang/String;

.field private tv_address:Landroid/widget/TextView;

.field private tv_msg:Landroid/widget/TextView;

.field private tv_shadeLeft:Landroid/widget/TextView;

.field private tv_shadeRight:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private vScrollView:Lcn/apppark/mcd/widget/InnerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_INIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_REF:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_SCROLL:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_GROUP:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->isForceParentScrollTop:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    new-instance v0, Llh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llh;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Llb;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->mHandler:Llh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_INIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_REF:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_SCROLL:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->WHAT_GROUP:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->isForceParentScrollTop:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->isForceParentScrollTop:Z

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v0, Llh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llh;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Llb;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->mHandler:Llh;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;)Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->searchGroupId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getData(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SProductBase;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initListData(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Llh;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->mHandler:Llh;

    return-object v0
.end method

.method static synthetic g(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sortId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->searchGroupId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "orderBy"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keyword"

    const-string v2, ""

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->mHandler:Llh;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "products_sd"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getGroupData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "groupId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imei"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->IMEI:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->mHandler:Llh;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "getProductGroupInfo"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method static synthetic h(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initAdapter()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getSys_moduleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcn/apppark/vertify/adapter/SProductList5031Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SProductList5031Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SProductNine5032Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcn/apppark/vertify/adapter/SProductCard5033Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SProductCard5033Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13a7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initGroupInfo()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->img_bg:Lcn/apppark/mcd/widget/RemoteImageView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_address:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getNotice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupInfo:Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductGroupDetailVo;->getNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->img_phone:Landroid/widget/ImageView;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase$4;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->rel_msg:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase$5;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->rel_msg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initLeftType()V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x0

    move v4, v5

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0a0393

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0394

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0395

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v7, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    if-nez v4, :cond_0

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v7, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v3, v7}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase$8;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0201b8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0201bb

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initListData(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Llg;

    invoke-direct {v0, p0}, Llg;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0}, Llg;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    if-nez v1, :cond_4

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initAdapter()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setSelection(I)V

    :cond_2
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->isForceParentScrollTop:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->mHandler:Llh;

    new-instance v1, Llc;

    invoke-direct {v1, p0}, Llc;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Llh;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    :goto_1
    return-void

    :cond_4
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto :goto_1
.end method

.method private initTopType()V
    .locals 9

    const/4 v6, 0x0

    const/high16 v2, 0x42820000    # 65.0f

    const/16 v8, 0x8

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    if-ge v0, v1, :cond_0

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeRight:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move v4, v0

    :goto_0
    move v5, v6

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0a0396

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0397

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0398

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-virtual {v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v3, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    if-nez v5, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase$7;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase$7;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_0
    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private initTopType(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->hScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->hScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Llf;

    invoke-direct {v1, p0}, Llf;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a039b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeLeft:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeRight:Landroid/widget/TextView;

    const v0, 0x7f0a0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initTopType()V

    return-void
.end method

.method private initWidget()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a:Landroid/view/LayoutInflater;

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030083

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initTopType(Landroid/view/View;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->addView(Landroid/view/View;)V

    const v0, 0x7f0a0361

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    const v0, 0x7f0a0363

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->rel_cellRoot:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_groupInfoShow()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setScroll(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setBottomScroll(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    new-instance v2, Llb;

    invoke-direct {v2, p0}, Llb;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/ElasticScrollView;->setElasticScrollViewListener(Lcn/apppark/mcd/widget/ElasticScrollView$ElasticScrollViewListener;)V

    :cond_0
    const v0, 0x7f0a0364

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->img_bg:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0365

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->img_icon:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a0366

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a0369

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_address:Landroid/widget/TextView;

    const v0, 0x7f0a0367

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->img_phone:Landroid/widget/ImageView;

    const v0, 0x7f0a036b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_msg:Landroid/widget/TextView;

    const v0, 0x7f0a036a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->rel_msg:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initGroupInfo()V

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Lld;

    invoke-direct {v1, p0}, Lld;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getSys_moduleType()I

    move-result v0

    const/16 v1, 0x13a7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getSys_moduleType()I

    move-result v0

    const/16 v1, 0x13a9

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Lle;

    invoke-direct {v1, p0}, Lle;-><init>(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030082

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initleftType(Landroid/view/View;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->rel_cellRoot:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private initleftType(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a035f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/InnerScrollView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->vScrollView:Lcn/apppark/mcd/widget/InnerScrollView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->vScrollView:Lcn/apppark/mcd/widget/InnerScrollView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/InnerScrollView;->setParentScrollView(Landroid/widget/ScrollView;)V

    const v0, 0x7f0a0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initLeftType()V

    return-void
.end method

.method static synthetic j(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getData(II)V

    return-void
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->initWidget()V

    return-void
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->hScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->ll_type:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic p(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->tv_shadeRight:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic q(Lcn/apppark/vertify/activity/free/dyn/SProductBase;)Lcn/apppark/mcd/widget/ElasticScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    return-object v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getData(II)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getGroupData(I)V

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

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

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

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method

.method public setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SProductBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    return-void
.end method
