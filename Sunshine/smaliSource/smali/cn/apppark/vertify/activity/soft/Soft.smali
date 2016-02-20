.class public Lcn/apppark/vertify/activity/soft/Soft;
.super Landroid/app/Activity;


# static fields
.field private static final down_cache_what:I = 0x6

.field private static final down_ref_what:I = 0x5

.field private static final down_what:I = 0x4

.field private static final method_down:Ljava/lang/String; = "downTop"

.field private static final method_must:Ljava/lang/String; = "need"

.field private static final method_recom:Ljava/lang/String; = "recommend"

.field private static final must_cache_what:I = 0x9

.field private static final must_ref_what:I = 0x8

.field private static final must_what:I = 0x7

.field private static final recom_cache_what:I = 0x3

.field private static final recom_ref_what:I = 0x2

.field private static final recom_what:I = 0x1


# instance fields
.field private adapter_down:Lcn/apppark/vertify/adapter/SoftAdapter;

.field private adapter_must:Lcn/apppark/vertify/adapter/SoftAdapter;

.field private adapter_recom:Lcn/apppark/vertify/adapter/SoftAdapter;

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

.field private btn_back:Landroid/widget/Button;

.field private btn_down:Landroid/widget/Button;

.field private btn_must:Landroid/widget/Button;

.field private btn_recom:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentPage_down:I

.field private currentPage_must:I

.field private currentPage_recom:I

.field private galleryVoListTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private galleryVoLista:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lqt;

.field private isDownFinish:Z

.field private isMustFinish:Z

.field private itemList_down:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

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

.field private itemList_recom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private listView_down:Lcn/apppark/mcd/widget/PullDownListView;

.field private listView_must:Lcn/apppark/mcd/widget/PullDownListView;

.field private listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

.field private ll_menu:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tempItemList_down:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

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

.field private tempItemList_recom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;"
        }
    .end annotation
.end field

.field private viewpage_list:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->isDownFinish:Z

    iput-boolean v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->isMustFinish:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_recom:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_down:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_must:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->mListViews:Ljava/util/List;

    iput v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_recom:I

    iput v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_down:I

    iput v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_must:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/soft/Soft;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic A(Lcn/apppark/vertify/activity/soft/Soft;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_must:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_must:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_recom:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_recom:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->adapter_recom:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->tempItemList_recom:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/apppark/vertify/activity/soft/Soft;->getData(IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/soft/Soft;->checkResult(Lcn/apppark/mcd/widget/PullDownListView2;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/activity/soft/Soft;->checkResult(Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/soft/Soft;->initGalleryData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/soft/Soft;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->isDownFinish:Z

    return p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/Soft;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_down:I

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_down:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->adapter_down:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->tempItemList_down:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/soft/Soft;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->isMustFinish:Z

    return p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/soft/Soft;I)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_must:I

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_must:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->adapter_must:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_down:Ljava/util/ArrayList;

    return-object p1
.end method

.method private checkResult(Lcn/apppark/mcd/widget/PullDownListView2;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/apppark/mcd/widget/PullDownListView2;",
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

    invoke-virtual {p1, v0, v1}, Lcn/apppark/mcd/widget/PullDownListView2;->onFootNodata(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1, v1}, Lcn/apppark/mcd/widget/PullDownListView2;->onFootNodata(II)V

    goto :goto_0
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

.method public static synthetic d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->adapter_down:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->tempItemList_must:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_must:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/soft/Soft;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->isDownFinish:Z

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/soft/Soft;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_down:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->adapter_must:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object v0
.end method

.method private getData(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 8

    if-eqz p4, :cond_0

    invoke-static {p5, p0}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->read(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "soresult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->handler:Lqt;

    invoke-virtual {v0, v1}, Lqt;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v2, "2"

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

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/Soft;->handler:Lqt;

    const-string v3, "json"

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/ad.ws"

    move v1, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    goto :goto_0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/soft/Soft;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->isMustFinish:Z

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/soft/Soft;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_must:I

    return v0
.end method

.method private initGalleryData(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lql;

    invoke-direct {v0, p0}, Lql;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0}, Lql;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoListTemp:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoListTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string v1, "subject"

    invoke-static {p1, v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoListTemp:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoListTemp:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoListTemp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lqe;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lqe;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v1, v1, Lcn/apppark/mcd/widget/PullDownListView2;->gallery:Lcn/apppark/mcd/widget/UserGallery;

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/UserGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->gallery:Lcn/apppark/mcd/widget/UserGallery;

    iget-object v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->viewpage_list:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/UserGallery;->setmPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->gallery:Lcn/apppark/mcd/widget/UserGallery;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/UserGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->gallery:Lcn/apppark/mcd/widget/UserGallery;

    new-instance v1, Lqm;

    invoke-direct {v1, p0}, Lqm;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/UserGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->gallery:Lcn/apppark/mcd/widget/UserGallery;

    new-instance v1, Lqn;

    invoke-direct {v1, p0}, Lqn;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/UserGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0}, Lcn/apppark/vertify/activity/soft/Soft;->initPoint(ILjava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private initPoint(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/free/SoftReturnVo;",
            ">;)V"
        }
    .end annotation

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->arrImageView:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    invoke-static {v3}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v3

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020158

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-ne v0, p1, :cond_0

    const v3, 0x7f02013b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcn/apppark/vertify/activity/soft/Soft;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v3, v3, Lcn/apppark/mcd/widget/PullDownListView2;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initWidget()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a03f3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_recom:Landroid/widget/Button;

    const v0, 0x7f0a03f4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_down:Landroid/widget/Button;

    const v0, 0x7f0a03f5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_must:Landroid/widget/Button;

    const v0, 0x7f0a03f2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->ll_menu:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->ll_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    const/high16 v2, 0x423c0000    # 47.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/Soft$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/Soft$1;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/soft/Soft;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0300a4

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0300a6

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->mListViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->mListViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->mListViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->viewpage_list:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcn/apppark/vertify/activity/soft/Soft$AwesomePagerAdapter;

    iget-object v4, p0, Lcn/apppark/vertify/activity/soft/Soft;->mListViews:Ljava/util/List;

    invoke-direct {v0, p0, v4}, Lcn/apppark/vertify/activity/soft/Soft$AwesomePagerAdapter;-><init>(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/List;)V

    iget-object v4, p0, Lcn/apppark/vertify/activity/soft/Soft;->viewpage_list:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0a040f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    const v0, 0x7f0a0407

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_down:Lcn/apppark/mcd/widget/PullDownListView;

    const v0, 0x7f0a040e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/PullDownListView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->viewpage_list:Landroid/support/v4/view/ViewPager;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->viewpage_list:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lqo;

    invoke-direct {v1, p0}, Lqo;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_recom:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/Soft$3;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/Soft$3;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_down:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/Soft$4;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/Soft$4;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->btn_must:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/soft/Soft$5;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/soft/Soft$5;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    new-instance v1, Lqp;

    invoke-direct {v1, p0}, Lqp;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1, v6}, Lcn/apppark/mcd/widget/PullDownListView2;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView2$OnRefreshListener2;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    new-instance v1, Lqq;

    invoke-direct {v1, p0}, Lqq;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView2;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView2$OnFootRefreshListener2;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_down:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lqr;

    invoke-direct {v1, p0}, Lqr;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1, v6}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_down:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lqs;

    invoke-direct {v1, p0}, Lqs;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lqg;

    invoke-direct {v1, p0}, Lqg;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1, v6}, Lcn/apppark/mcd/widget/PullDownListView;->setonRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnRefreshListener;Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lqh;

    invoke-direct {v1, p0}, Lqh;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setonFootRefreshListener(Lcn/apppark/mcd/widget/PullDownListView$OnFootRefreshListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    new-instance v1, Lqi;

    invoke-direct {v1, p0}, Lqi;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView2;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_down:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lqj;

    invoke-direct {v1, p0}, Lqj;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    new-instance v1, Lqk;

    invoke-direct {v1, p0}, Lqk;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic j(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->viewpage_list:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/soft/Soft;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_recom:I

    return v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_recom:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_down:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->itemList_must:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic o(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->galleryVoLista:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic p(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    return-object v0
.end method

.method public static synthetic r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->tempItemList_recom:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->context:Landroid/content/Context;

    return-object v0
.end method

.method private subCleckData()V
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v1, "10185912"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcn/apppark/vertify/activity/soft/Soft;->handler:Lqt;

    const-string v3, "json"

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/ad.ws"

    const-string v7, "index"

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->adapter_recom:Lcn/apppark/vertify/adapter/SoftAdapter;

    return-object v0
.end method

.method public static synthetic u(Lcn/apppark/vertify/activity/soft/Soft;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_recom:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_recom:I

    return v0
.end method

.method public static synthetic v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_down:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method public static synthetic w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->tempItemList_down:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic x(Lcn/apppark/vertify/activity/soft/Soft;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_down:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_down:I

    return v0
.end method

.method public static synthetic y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_must:Lcn/apppark/mcd/widget/PullDownListView;

    return-object v0
.end method

.method public static synthetic z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->tempItemList_must:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public changePoint(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020158

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02013b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->listView_recom:Lcn/apppark/mcd/widget/PullDownListView2;

    iget-object v0, v0, Lcn/apppark/mcd/widget/PullDownListView2;->ll_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/soft/Soft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/soft/Soft;->initWidget()V

    new-instance v0, Lqt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqt;-><init>(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/activity/soft/Soft$1;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/soft/Soft;->handler:Lqt;

    iget v1, p0, Lcn/apppark/vertify/activity/soft/Soft;->currentPage_recom:I

    const/4 v2, 0x3

    const-string v3, "recommend"

    const/4 v4, 0x1

    const-string v5, "recom"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->getData(IILjava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/soft/Soft;->subCleckData()V

    return-void
.end method
