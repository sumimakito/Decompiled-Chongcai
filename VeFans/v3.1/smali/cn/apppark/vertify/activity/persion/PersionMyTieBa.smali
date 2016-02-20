.class public Lcn/apppark/vertify/activity/persion/PersionMyTieBa;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MSG_WHAT:I

.field private btn_back:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentMsgTime:Ljava/lang/String;

.field private handler:Lns;

.field private ll_collection:Landroid/widget/LinearLayout;

.field private ll_history:Landroid/widget/LinearLayout;

.field private ll_msg:Landroid/widget/LinearLayout;

.field private ll_tieba:Landroid/widget/LinearLayout;

.field private tv_msgNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->MSG_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->context:Landroid/content/Context;

    const-string v0, "2015-11-28 11:37:001"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->currentMsgTime:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersionMyTieBa;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->setMsgCount(Ljava/lang/String;)V

    return-void
.end method

.method private checkLogin(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcn/apppark/vertify/activity/tieba/TBBaseAct;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v1

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v1, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMsg(I)V
    .locals 8

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getLastMsgTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getLastMsgTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->currentMsgTime:Ljava/lang/String;

    :cond_0
    const-string v0, "lastReadTime"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->currentMsgTime:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->handler:Lns;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/tieba.ws"

    const-string v7, "getNewMessageCount"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    :cond_1
    return-void
.end method

.method private initTiebaColor()V
    .locals 1

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    return-void
.end method

.method private initWidget()V
    .locals 2

    new-instance v0, Lns;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lns;-><init>(Lcn/apppark/vertify/activity/persion/PersionMyTieBa;Lnr;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->handler:Lns;

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02dc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->tv_msgNum:Landroid/widget/TextView;

    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_tieba:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02d9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_history:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02da

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_collection:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02db

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_msg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02d7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_tieba:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_history:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_collection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->ll_msg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getMsg(I)V

    return-void
.end method

.method private setMsgCount(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retFlag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->currentMsgTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateLastMsgTime(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->tv_msgNum:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->tv_msgNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->tv_msgNum:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->finish()V

    goto :goto_0

    :pswitch_1
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->checkLogin(Ljava/lang/Class;)Z

    goto :goto_0

    :pswitch_2
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMyHistory;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->checkLogin(Ljava/lang/Class;)Z

    goto :goto_0

    :pswitch_3
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMyCollection;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->checkLogin(Ljava/lang/Class;)Z

    goto :goto_0

    :pswitch_4
    const-class v0, Lcn/apppark/vertify/activity/tieba/TMsg;

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->checkLogin(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/apppark/mcd/util/PublicUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->currentMsgTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->currentMsgTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateLastMsgTime(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->tv_msgNum:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersionMyTieBa;->initWidget()V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    return-void
.end method
