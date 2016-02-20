.class public Lcn/apppark/vertify/activity/free/dyn/SMsgBase;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# instance fields
.field private final WHAT_GROUP:I

.field private final WHAT_INIT:I

.field private final WHAT_REF:I

.field private final WHAT_SCROLL:I

.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

.field b:Landroid/view/LayoutInflater;

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

.field private hScrollView:Landroid/widget/HorizontalScrollView;

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

.field private itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

.field private listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

.field private ll_type:Landroid/widget/LinearLayout;

.field private loadDialog:Landroid/app/Dialog;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private mHandler:Lkz;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private searchGroupId:Ljava/lang/String;

.field private tv_shadeLeft:Landroid/widget/TextView;

.field private tv_shadeRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->WHAT_INIT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->WHAT_GROUP:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->WHAT_REF:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->WHAT_SCROLL:I

    iput v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const v1, 0x7f080024

    invoke-static {v0, v1}, Lcn/apppark/ckj10185912/HQCHApplication;->createLoadingDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lkz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkz;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Lkv;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->mHandler:Lkz;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->searchGroupId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initListData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Lkz;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->mHandler:Lkz;

    return-object v0
.end method

.method static synthetic d(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getData(II)V

    return-void
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initWidget()V

    return-void
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->searchGroupId:Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->mHandler:Lkz;

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

.method private getGroupData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "groupId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->mHandler:Lkz;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/info.ws"

    const-string v7, "getInfoSortInfo"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initAdapter()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getSys_moduleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcn/apppark/vertify/adapter/SMsgList5021Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SMsgList5021Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SMsgNine5022Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcn/apppark/vertify/adapter/SMsgCard5023Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/SMsgCard5023Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x139d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initLeftType()V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x0

    move v4, v5

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b:Landroid/view/LayoutInflater;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v7, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    if-nez v4, :cond_0

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v7, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v3, v7}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SMsgBase$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase$5;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0201b8

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

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

.method private initListData(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Lky;

    invoke-direct {v0, p0}, Lky;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    invoke-virtual {v0}, Lky;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initAdapter()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setSelection(I)V

    :cond_2
    :goto_0
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgListReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    :goto_1
    return-void

    :cond_3
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto :goto_1
.end method

.method private initTopType()V
    .locals 9

    const/4 v6, 0x0

    const/high16 v2, 0x42820000    # 65.0f

    const/16 v8, 0x8

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    if-ge v0, v1, :cond_0

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeRight:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move v4, v0

    :goto_0
    move v5, v6

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b:Landroid/view/LayoutInflater;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->a:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v3, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    if-nez v5, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SMsgBase$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase$4;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->ll_type:Landroid/widget/LinearLayout;

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
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getResources()Landroid/content/res/Resources;

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

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->hScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->hScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lkx;

    invoke-direct {v1, p0}, Lkx;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a039b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeLeft:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeRight:Landroid/widget/TextView;

    const v0, 0x7f0a0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initTopType()V

    return-void
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b:Landroid/view/LayoutInflater;

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->itemVo:Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03007e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initTopType(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->addView(Landroid/view/View;)V

    const v1, 0x7f0a0338

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Lkv;

    invoke-direct {v1, p0}, Lkv;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Lkw;

    invoke-direct {v1, p0}, Lkw;-><init>(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03007d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0360

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initLeftType()V

    move-object v0, v1

    goto :goto_0
.end method

.method private initleftType(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->initLeftType()V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->hScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->ll_type:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/dyn/SMsgBase;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->tv_shadeRight:Landroid/widget/TextView;

    return-object v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getData(II)V

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

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getGroupData(I)V

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

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

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

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
