.class public Lcn/apppark/vertify/activity/buy/BuyMyCenter;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_NUMBER:Ljava/lang/String;

.field private final GET_NUMBER_WHAT:I

.field private btn_back:Landroid/widget/Button;

.field private handler:Ldi;

.field private ll_address:Landroid/widget/LinearLayout;

.field private ll_buycar:Landroid/widget/LinearLayout;

.field private ll_history:Landroid/widget/LinearLayout;

.field private ll_mycollection:Landroid/widget/LinearLayout;

.field private ll_myorder:Landroid/widget/LinearLayout;

.field private ll_productReplay:Landroid/widget/LinearLayout;

.field private tv_commentcount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "detail"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->GET_NUMBER:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->GET_NUMBER_WHAT:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyMyCenter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->tv_commentcount:Landroid/widget/TextView;

    return-object v0
.end method

.method private getNumber(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->handler:Ldi;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "detail"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->tv_commentcount:Landroid/widget/TextView;

    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_myorder:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_mycollection:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_history:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_address:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_buycar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_productReplay:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_myorder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_mycollection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_history:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_address:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_buycar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->ll_productReplay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0091

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->finish()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyProductCollection;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyViewHistory;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyProCommentList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0091
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->initWidget()V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Ldi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldi;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyCenter;Ldh;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->handler:Ldi;

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyMyCenter;->getNumber(I)V

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onResume()V

    return-void
.end method
