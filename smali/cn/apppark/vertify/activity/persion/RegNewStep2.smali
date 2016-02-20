.class public Lcn/apppark/vertify/activity/persion/RegNewStep2;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private METHOD_CODE:Ljava/lang/String;

.field private METHOD_REG:Ljava/lang/String;

.field private final WHAT_CODE:I

.field private final WHAT_REG:I

.field private btn_back:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private email:Ljava/lang/String;

.field private et_code:Landroid/widget/EditText;

.field private et_nikeName:Landroid/widget/EditText;

.field private group_sex:Landroid/widget/RadioGroup;

.field private handler:Log;

.field private img_code:Lcn/apppark/mcd/widget/RemoteImageView;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private regVo:Lcn/apppark/mcd/vo/buy/BuyRegVo;

.field private sex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "getCode"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->METHOD_CODE:Ljava/lang/String;

    const-string v0, "registerNew"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->METHOD_REG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->WHAT_REG:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->WHAT_CODE:I

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->sex:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Lcn/apppark/mcd/vo/buy/BuyRegVo;)Lcn/apppark/mcd/vo/buy/BuyRegVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->regVo:Lcn/apppark/mcd/vo/buy/BuyRegVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->sex:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/vo/buy/BuyRegVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->regVo:Lcn/apppark/mcd/vo/buy/BuyRegVo;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/RegNewStep2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkLoginFormat()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->et_nikeName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u6635\u79f0"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->initToast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->et_code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->subData(I)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/RegNewStep2;)Lcn/apppark/mcd/widget/RemoteImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    return-object v0
.end method

.method private getCode(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->handler:Log;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->METHOD_CODE:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getCode(I)V

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02b4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->btn_sure:Landroid/widget/Button;

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->btn_sure:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->et_nikeName:Landroid/widget/EditText;

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->et_code:Landroid/widget/EditText;

    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->group_sex:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->group_sex:Landroid/widget/RadioGroup;

    new-instance v1, Lof;

    invoke-direct {v1, p0}, Lof;-><init>(Lcn/apppark/vertify/activity/persion/RegNewStep2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private subData(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickName"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->et_nikeName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sex"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->sex:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "email"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->email:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->password:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->phone:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->et_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->handler:Log;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->METHOD_REG:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->checkLoginFormat()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getCode(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a02b3 -> :sswitch_0
        0x7f0a02b4 -> :sswitch_1
        0x7f0a02ba -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->setContentView(I)V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->phone:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->email:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->password:Ljava/lang/String;

    new-instance v0, Log;

    invoke-direct {v0, p0}, Log;-><init>(Lcn/apppark/vertify/activity/persion/RegNewStep2;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/RegNewStep2;->handler:Log;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/RegNewStep2;->initWidget()V

    return-void
.end method
