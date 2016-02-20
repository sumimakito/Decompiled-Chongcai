.class public Lcn/apppark/vertify/activity/buy/BuyPersonMsg;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_NUMBER:Ljava/lang/String;

.field private final GET_NUMBER_WHAT:I

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private handler:Lee;

.field private ll_msgReplay:Landroid/widget/LinearLayout;

.field private ll_mycollection:Landroid/widget/LinearLayout;

.field private tv_msgcomment:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "detail"

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->GET_NUMBER:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->GET_NUMBER_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyPersonMsg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->tv_msgcomment:Landroid/widget/TextView;

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

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->handler:Lee;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->map2Json(Ljava/util/Map;)Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->ll_mycollection:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->ll_msgReplay:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->tv_msgcomment:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->ll_mycollection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->ll_msgReplay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00c3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->finish()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a00c3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->initWidget()V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lee;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lee;-><init>(Lcn/apppark/vertify/activity/buy/BuyPersonMsg;Led;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->handler:Lee;

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyPersonMsg;->getNumber(I)V

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onResume()V

    return-void
.end method
