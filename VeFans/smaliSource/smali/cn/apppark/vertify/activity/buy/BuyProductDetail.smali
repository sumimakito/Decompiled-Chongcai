.class public Lcn/apppark/vertify/activity/buy/BuyProductDetail;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADDBUYCAR_METHOD:Ljava/lang/String; = "saveShopping"

.field private static final ADDBUYCAR_WHAT:I = 0x2

.field private static final ADD_COLLECTION_WHAT:I = 0x3

.field private static final COLLECTION_METHOD:Ljava/lang/String; = "saveFavorites"

.field private static COLLECTION_STATE:Ljava/lang/String; = null

.field private static COLLECTION_STATE_NO:Ljava/lang/String; = null

.field private static final DEL_COLLECTION_METHOD:Ljava/lang/String; = "deleteFavoritesProduct"

.field private static final DEL_COLLECTION_WHAT:I = 0x4

.field private static final DETAIL_METHOD:Ljava/lang/String; = "product"

.field private static final GETCAR_WHAT:I = 0x5

.field private static final GET_WHAT:I = 0x1

.field public static final METHOD_GETCAR:Ljava/lang/String; = "myShoppingCare"


# instance fields
.field a:Landroid/widget/RelativeLayout;

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

.field private btn_add:Landroid/widget/Button;

.field private btn_back:Landroid/widget/Button;

.field private btn_collection:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private gallery:Landroid/widget/Gallery;

.field private handler:Lfk;

.field private id:Ljava/lang/String;

.field private isCollection:Ljava/lang/String;

.field private isFinish:Z

.field private lin_point:Landroid/widget/LinearLayout;

.field private ll_comment:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private loadDialog:Landroid/app/Dialog;

.field private pics:[Ljava/lang/String;

.field private productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

.field private rel_buycar:Landroid/widget/RelativeLayout;

.field private tv_carnumber:Landroid/widget/TextView;

.field private tv_commentcount:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;

.field private tv_name2:Landroid/widget/TextView;

.field private tv_number:Landroid/widget/TextView;

.field private tv_orgPrice:Landroid/widget/TextView;

.field private tv_price:Landroid/widget/TextView;

.field private tv_sotre:Landroid/widget/TextView;

.field private tv_storenull:Landroid/widget/TextView;

.field private web_detail:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1"

    sput-object v0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->COLLECTION_STATE:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->COLLECTION_STATE_NO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    sget-object v0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->COLLECTION_STATE:Ljava/lang/String;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isCollection:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Lcn/apppark/mcd/vo/buy/BuyProductVo;)Lcn/apppark/mcd/vo/buy/BuyProductVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    return-object p1
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->COLLECTION_STATE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isCollection:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getData(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    return-object v0
.end method

.method private addBuyCar(ILjava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "note"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->handler:Lfk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "saveShopping"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private addCollection(I)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->handler:Lfk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "saveFavorites"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->COLLECTION_STATE_NO:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Lcn/apppark/mcd/vo/buy/BuyProductVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private changeBuyCarState()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductSum()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->setData()V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private delCollection(I)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productId"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->handler:Lfk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "deleteFavoritesProduct"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductSum()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_carnumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private getBuyCar(I)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currPage"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pageSize"

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->handler:Lfk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/business.ws"

    const-string v7, "myShoppingCare"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    :cond_0
    return-void
.end method

.method private getData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "memberId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->handler:Lfk;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "product"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private getHistoryName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "history"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_collection:Landroid/widget/Button;

    return-object v0
.end method

.method private initGalleryData()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lfi;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lfi;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v5, :cond_0

    invoke-direct {p0, v4}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->initPoint(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->gallery:Landroid/widget/Gallery;

    new-instance v1, Lfg;

    invoke-direct {v1, p0}, Lfg;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    return-void

    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getPicPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method private initPoint(I)V
    .locals 4

    const/4 v2, 0x5

    const/16 v3, 0xa

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->arrImageView:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v0

    invoke-static {v2}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->pics:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-ne v0, p1, :cond_0

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_collection:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_collection:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->gallery:Landroid/widget/Gallery;

    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->lin_point:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x104

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->getConvertValue(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_name:Landroid/widget/TextView;

    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_price:Landroid/widget/TextView;

    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_orgPrice:Landroid/widget/TextView;

    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_name2:Landroid/widget/TextView;

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_number:Landroid/widget/TextView;

    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_sotre:Landroid/widget/TextView;

    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_storenull:Landroid/widget/TextView;

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->web_detail:Landroid/webkit/WebView;

    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->rel_buycar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_carnumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->rel_buycar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->ll_comment:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->ll_comment:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0108

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_commentcount:Landroid/widget/TextView;

    return-void
.end method

.method private setData()V
    .locals 6

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_collection:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_add:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_name2:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_name2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_price:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_orgPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getOriPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0.00"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getOriPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_orgPrice:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_commentcount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getCommentCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u8bc4\u4ef7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_orgPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_number:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7d2f\u8ba1\u51fa\u552e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getSoldCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductSum()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_sotre:Landroid/widget/TextView;

    const-string v1, "\u5269\u4f59\u5e93\u5b58: "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_storenull:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->changeBuyCarState()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->initGalleryData()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->web_detail:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->web_detail:Landroid/webkit/WebView;

    new-instance v1, Lff;

    invoke-direct {v1, p0}, Lff;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getMainPara()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->web_detail:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getIsFavorite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isCollection:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getIsFavorite()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->COLLECTION_STATE_NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_collection:Landroid/widget/Button;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_2
    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->updateHistoryFile()V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_sotre:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5269\u4f59\u5e93\u5b58: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductSum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->tv_storenull:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->btn_collection:Landroid/widget/Button;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 6

    const/16 v4, 0x1a

    const/16 v5, 0xf

    const-string v0, "666666"

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v3

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    const v2, 0x7f020103

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    const v2, 0x7f0200fa

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    const v2, 0x7f020106

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHistoryFile()V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getHistoryName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->read(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->setMainPara(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->setDetail(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getHistoryName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void

    :cond_0
    new-instance v1, Lfh;

    invoke-direct {v1, p0}, Lfh;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V

    invoke-virtual {v1}, Lfh;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2ListNoItem(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v5}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public changePoint(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->arrImageView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->lin_point:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isCollection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->addCollection(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->delCollection(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->productVo:Lcn/apppark/mcd/vo/buy/BuyProductVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProductVo;->getProductSum()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->isFinish:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->addBuyCar(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProCommentList2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00f8 -> :sswitch_0
        0x7f0a0107 -> :sswitch_4
        0x7f0a010f -> :sswitch_1
        0x7f0a0110 -> :sswitch_3
        0x7f0a0113 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f080024

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lfk;

    invoke-direct {v0, p0}, Lfk;-><init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->handler:Lfk;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->initWidget()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getData(I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onResume()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->getBuyCar(I)V

    return-void
.end method
