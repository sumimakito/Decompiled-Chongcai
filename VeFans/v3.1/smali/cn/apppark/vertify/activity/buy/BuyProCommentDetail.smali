.class public Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final GET_DATA:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "commentDetail"


# instance fields
.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

.field private handler:Leg;

.field private id:Ljava/lang/String;

.field private img_smail1:Landroid/widget/ImageView;

.field private img_smail2:Landroid/widget/ImageView;

.field private img_smail3:Landroid/widget/ImageView;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private tv_buyTime:Landroid/widget/TextView;

.field private tv_content:Landroid/widget/TextView;

.field private tv_replay:Landroid/widget/TextView;

.field private tv_star:Landroid/widget/TextView;

.field private tv_subtime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;)Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->getData(I)V

    return-void
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->initData()V

    return-void
.end method

.method private getData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "interfaces"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->handler:Leg;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/cms.ws"

    const-string v7, "commentDetail"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private initData()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getScore()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_star:Landroid/widget/TextView;

    const-string v1, "\u5dee\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_buyTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d2d\u4e70\u65f6\u95f4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getbTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_subtime:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getcTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_replay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5546\u5bb6\u56de\u590d:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getReplyContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getScore()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->img_smail2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_star:Landroid/widget/TextView;

    const-string v1, "\u4e2d\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->detailVo:Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyProCommentDetailVo;->getScore()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_star:Landroid/widget/TextView;

    const-string v1, "\u597d\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->img_smail2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->img_smail3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_buyTime:Landroid/widget/TextView;

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_content:Landroid/widget/TextView;

    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_subtime:Landroid/widget/TextView;

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_replay:Landroid/widget/TextView;

    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->tv_star:Landroid/widget/TextView;

    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->img_smail1:Landroid/widget/ImageView;

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->img_smail2:Landroid/widget/ImageView;

    const v0, 0x7f0a00c9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->img_smail3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0048
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->id:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    new-instance v0, Leg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leg;-><init>(Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;Lef;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->handler:Leg;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->initWidget()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->getData(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyProCommentDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    return-void
.end method
