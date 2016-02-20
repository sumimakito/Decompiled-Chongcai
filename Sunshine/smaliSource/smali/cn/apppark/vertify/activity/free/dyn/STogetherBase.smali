.class public Lcn/apppark/vertify/activity/free/dyn/STogetherBase;
.super Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# static fields
.field private static GALLERY_HIEGHT:I


# instance fields
.field private final CLICK_GALLERY_ITEM:I

.field private final WHAT_AUTO_PLAY:I

.field private final WHAT_INIT:I

.field private final WHAT_REF:I

.field private adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

.field private arrImageView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

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

.field private clickPos:I

.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

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

.field private currentPos:I

.field private gallery:Landroid/widget/Gallery;

.field private galleryAdapter:Llq;

.field private galleryThread:Ljava/lang/Thread;

.field private galleryType:Ljava/lang/String;

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

.field private isShowGallery:Z

.field private isStop:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemListGallery:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

.field private listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

.field private ll_point:Landroid/widget/LinearLayout;

.field private ll_type:Landroid/widget/LinearLayout;

.field private loadDialog:Landroid/app/Dialog;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private mHandler:Llr;

.field private mInflater:Landroid/view/LayoutInflater;

.field private pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

.field private parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

.field private searchType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x78

    sput v0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->GALLERY_HIEGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->WHAT_INIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->WHAT_REF:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->WHAT_AUTO_PLAY:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->CLICK_GALLERY_ITEM:I

    iput v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isShowGallery:Z

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryType:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isStop:Z

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->clickPos:I

    iput v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->btns:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->countTvs:Ljava/util/ArrayList;

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->searchType:Ljava/lang/String;

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->convertView:Landroid/view/View;

    iput-object p0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    new-instance v0, Llr;

    invoke-direct {v0, p0, v1}, Llr;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Llj;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->mHandler:Llr;

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v1, 0x13b1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v1, 0x13b2

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "0"

    invoke-virtual {p3}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_showGallery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isShowGallery:Z

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryType:Ljava/lang/String;

    :cond_1
    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setCacheColorHint(I)V

    const v0, 0x7f0201be

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setSelector(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0, p4}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setDividerHeight(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initWidget()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;I)I
    .locals 0

    iput p1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->clickPos:I

    return p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    return-object v0
.end method

.method static synthetic a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->searchType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getData(II)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;I)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPos:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initListData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPos:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    return v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Llr;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->mHandler:Llr;

    return-object v0
.end method

.method static synthetic f(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->btns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->countTvs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getData(II)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "togetherId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getInterfaces()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "orderBy"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->searchType:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "location"

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->LOCATION:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "galleryType"

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryType:Ljava/lang/String;

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->mHandler:Llr;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "getShopGather"

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method static synthetic h(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getData(II)V

    return-void
.end method

.method private initAdapter()V
    .locals 5

    new-instance v0, Lcn/apppark/vertify/adapter/STogether5043Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/STogether5043Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_moduleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcn/apppark/vertify/adapter/STogether5041Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/STogether5041Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcn/apppark/vertify/adapter/STogether5042Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->pageVo:Lcn/apppark/mcd/vo/base/FreePageVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/apppark/vertify/adapter/STogether5042Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcn/apppark/vertify/adapter/STogether5043Adapter;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/vertify/adapter/STogether5043Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13b1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initChangeGalleryThread()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Llp;

    invoke-direct {v1, p0}, Llp;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private initGallery()V
    .locals 2

    const/16 v1, 0x8

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isShowGallery:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->GALLERY_HIEGHT:I

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lll;

    invoke-direct {v1, p0}, Lll;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    new-instance v1, Llm;

    invoke-direct {v1, p0}, Llm;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private initGalleryData()V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemListGallery:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initPoint(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->galleryAdapter:Llq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemListGallery:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    new-instance v1, Llq;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemListGallery:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Llq;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initChangeGalleryThread()V

    goto :goto_0
.end method

.method private initListData(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isShowGallery:Z

    if-eqz v0, :cond_0

    new-instance v0, Lln;

    invoke-direct {v0, p0}, Lln;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {v0}, Lln;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "galleryItem"

    invoke-static {p1, v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemListGallery:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initGalleryData()V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    new-instance v0, Llo;

    invoke-direct {v0, p0}, Llo;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {v0}, Llo;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    if-nez v1, :cond_5

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initAdapter()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setSelection(I)V

    :cond_4
    :goto_0
    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    :goto_1
    return-void

    :cond_5
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->adapter:Lcn/apppark/vertify/adapter/TempBaseAdapter;

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/TempBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    invoke-virtual {v0, v2, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto :goto_1
.end method

.method private initPoint(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->arrImageView:Ljava/util/ArrayList;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemListGallery:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02011e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-ne v0, p1, :cond_0

    const v3, 0x7f02011f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initTopType()V
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    new-instance v0, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;-><init>()V

    new-instance v1, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-direct {v1}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;-><init>()V

    new-instance v2, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;

    invoke-direct {v2}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->setId(Ljava/lang/String;)V

    const-string v3, "\u7efc\u5408"

    invoke-virtual {v0, v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->setName(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->setId(Ljava/lang/String;)V

    const-string v3, "\u4eba\u6c14"

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->setName(Ljava/lang/String;)V

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->setId(Ljava/lang/String;)V

    const-string v3, "\u8ddd\u79bb"

    invoke-virtual {v2, v3}, Lcn/apppark/mcd/vo/dyn/DynMsgGroupVo;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int v6, v0, v1

    move v4, v5

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->mInflater:Landroid/view/LayoutInflater;

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

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->groupVoList:Ljava/util/ArrayList;

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

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v3, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    if-nez v4, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->countTvs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/STogetherBase$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase$5;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_type:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initWidget()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->convertView:Landroid/view/View;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->convertView:Landroid/view/View;

    const v1, 0x7f0a038a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->convertView:Landroid/view/View;

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_type:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->convertView:Landroid/view/View;

    const v1, 0x7f0a038b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_point:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->convertView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->addHeaderView(Landroid/view/View;)V

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_showOrderBar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initTopType()V

    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->initGallery()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->parentScroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setParentScroll(Lcn/apppark/mcd/widget/ElasticScrollView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v1, 0x13b1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getSys_moduleType()I

    move-result v0

    const/16 v1, 0x13b3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    new-instance v1, Llj;

    invoke-direct {v1, p0}, Llj;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    new-instance v0, Llk;

    invoke-direct {v0, p0}, Llk;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListViewAutoLoad$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_bgPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_bgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_bgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_bgAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemVo:Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getStyle_enableScroll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setScroll(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_type:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->listView:Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPos:I

    return v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->itemListGallery:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->clickPos:I

    return v0
.end method

.method public static synthetic p(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isStop:Z

    return v0
.end method

.method private refData()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getData(II)V

    return-void
.end method


# virtual methods
.method public changePoint(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02011f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02011e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getData(II)V

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

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadFail(I)V

    :cond_0
    return-void
.end method

.method public loadSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    invoke-interface {v0, p1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->isStop:Z

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    iget v0, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->currentPage:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->getData(II)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
