.class public Lcn/apppark/vertify/activity/persion/PersonInfo;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GETINFO_WHAT:I

.field private final SUB_PIC_METHOD:Ljava/lang/String;

.field private final SUB_PIC_WHAT:I

.field private bmp:Landroid/graphics/Bitmap;

.field private btn_back:Landroid/widget/Button;

.field private btn_camera:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_pic:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Lot;

.field private img_head:Lcn/apppark/mcd/widget/RemoteImageView;

.field private img_nikeName:Landroid/widget/ImageView;

.field private ll_email:Landroid/widget/LinearLayout;

.field private ll_head:Landroid/widget/LinearLayout;

.field private ll_nikeName:Landroid/widget/LinearLayout;

.field private ll_phone:Landroid/widget/LinearLayout;

.field private ll_sex:Landroid/widget/LinearLayout;

.field private ll_sign:Landroid/widget/LinearLayout;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private myMenu:Los;

.field private tv_email:Landroid/widget/TextView;

.field private tv_nikeName:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;

.field private tv_sex:Landroid/widget/TextView;

.field private tv_sign:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "updateHeadFace"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->SUB_PIC_METHOD:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->GETINFO_WHAT:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->SUB_PIC_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_camera:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->subPhoto(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/PersonInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_pic:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersonInfo;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->getPersionDetail()V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersonInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_cancel:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/mcd/widget/RemoteImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPersionDetail()V
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v1, "10185912"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/persion/PersonInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "detail"

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->img_nikeName:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/persion/PersonInfo;)V
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Loq;

    invoke-direct {v1, p0}, Loq;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_phone:Landroid/widget/TextView;

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_nikeName:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_email:Landroid/widget/TextView;

    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_sex:Landroid/widget/TextView;

    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_sign:Landroid/widget/TextView;

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_head:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_sex:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_email:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_sign:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_phone:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_nikeName:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->img_nikeName:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_head:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_sex:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_email:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_sign:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_phone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_phone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_nikeName:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/persion/PersonInfo;)Lot;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->handler:Lot;

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_pic:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/persion/PersonInfo;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->btn_camera:Landroid/widget/Button;

    return-object v0
.end method

.method private onError()V
    .locals 5

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v1, Loq;

    invoke-direct {v1, p0}, Loq;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    return-void
.end method

.method private subPhoto(I)V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "headFace"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcn/apppark/mcd/util/imge/ImgUtil;->pic2String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->handler:Lot;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersonInfo;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updateHeadFace"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updateInfoState()V
    .locals 3

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_phone:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_nikeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_email:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "0"

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_sex:Landroid/widget/TextView;

    const-string v2, "\u5973"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_sign:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->tv_sex:Landroid/widget/TextView;

    const-string v2, "\u7537"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcn/apppark/mcd/util/imge/ImgUtil;->imageUriFromCamera:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/apppark/mcd/util/imge/ImgUtil;->imageUriFromCamera:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/imge/ImgUtil;->cropImage(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/apppark/mcd/util/imge/ImgUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/apppark/mcd/util/imge/ImgUtil;->cropImage(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/apppark/mcd/util/imge/ImgUtil;->cropImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcn/apppark/mcd/util/imge/ImgUtil;->cropImageUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcn/apppark/mcd/util/imge/ImgUtil;->getBitmapFromUri(Landroid/net/Uri;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lor;

    invoke-direct {v1, p0}, Lor;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/persion/PersonInfo;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "1"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getNikeNameRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    if-nez v0, :cond_1

    new-instance v0, Los;

    invoke-direct {v0, p0, p0}, Los;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    invoke-virtual {v0}, Los;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    invoke-virtual {v0}, Los;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->ll_phone:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Los;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    invoke-virtual {v0}, Los;->dismiss()V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0}, Lcn/apppark/mcd/util/imge/ImgUtil;->openCameraImage(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    invoke-virtual {v0}, Los;->dismiss()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {p0}, Lcn/apppark/mcd/util/imge/ImgUtil;->openLocalImage(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->myMenu:Los;

    invoke-virtual {v0}, Los;->dismiss()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00a8 -> :sswitch_0
        0x7f0a00a9 -> :sswitch_5
        0x7f0a00ab -> :sswitch_2
        0x7f0a00ae -> :sswitch_3
        0x7f0a00b0 -> :sswitch_1
        0x7f0a00b2 -> :sswitch_4
        0x7f0a018a -> :sswitch_7
        0x7f0a018b -> :sswitch_8
        0x7f0a018c -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->setContentView(I)V

    new-instance v0, Lot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lot;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo;Loq;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->handler:Lot;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->initWidget()V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->loadDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->getPersionDetail()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo;->bmp:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->finish()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo;->updateInfoState()V

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onResume()V

    return-void
.end method
