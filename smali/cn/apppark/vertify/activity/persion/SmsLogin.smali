.class public Lcn/apppark/vertify/activity/persion/SmsLogin;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final LOGIN_WHAT:I

.field private final METHOD_LOGIN:Ljava/lang/String;

.field private final REQ_REG:I

.field private final REQ_VERTIFY:I

.field private btn_back:Landroid/widget/Button;

.field private btn_findPass:Landroid/widget/Button;

.field private btn_sure:Lcn/apppark/mcd/widget/MyBtn;

.field private et_password:Lcn/apppark/mcd/widget/MyEditText2;

.field private et_phone:Lcn/apppark/mcd/widget/MyEditText2;

.field private mHandler:Lop;

.field private mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

.field private tv_regfree:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    iput v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->REQ_REG:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->REQ_VERTIFY:I

    iput v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->LOGIN_WHAT:I

    const-string v0, "smsLogin"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->METHOD_LOGIN:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsLogin;Lcn/apppark/mcd/vo/buy/BuyLoginVo;)Lcn/apppark/mcd/vo/buy/BuyLoginVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsLogin;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->checkLoginFormat()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsLogin;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/vertify/activity/persion/SmsLogin;->checkResultRetMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/SmsLogin;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/SmsLogin;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->checkLoginResult()V

    return-void
.end method

.method private checkLoginFormat()V
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/SmsLogin;->subData(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkLoginResult()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getPhoneState()I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "phone"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u767b\u9646\u6210\u529f"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->initToast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->updateLoginInfo()V

    invoke-virtual {p0, v2}, Lcn/apppark/vertify/activity/persion/SmsLogin;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "\u767b\u9646\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02a1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyBtn;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_sure:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_sure:Lcn/apppark/mcd/widget/MyBtn;

    const-string v1, "\u7acb\u5373\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyBtn;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_sure:Lcn/apppark/mcd/widget/MyBtn;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyBtn;->setBgColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_sure:Lcn/apppark/mcd/widget/MyBtn;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/MyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a029c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    const v0, 0x7f0a029f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->isPassOpen(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    new-instance v1, Loo;

    invoke-direct {v1, p0}, Loo;-><init>(Lcn/apppark/vertify/activity/persion/SmsLogin;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->setMyOnKeyEnter(Lcn/apppark/mcd/widget/MyEditText2$MyOnKeyEnter;)V

    const v0, 0x7f0a029d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->tv_regfree:Landroid/widget/TextView;

    const v0, 0x7f0a02a0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_findPass:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_findPass:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_sure:Lcn/apppark/mcd/widget/MyBtn;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/MyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->tv_regfree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->btn_findPass:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private subData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mHandler:Lop;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/sms.ws"

    const-string v7, "smsLogin"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method private updateLoginInfo()V
    .locals 4

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updatePhone(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getSex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSex(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getSignName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserSign(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserNikeName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mLoginVo:Lcn/apppark/mcd/vo/buy/BuyLoginVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyLoginVo;->getHeadFace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;->updateUserHeadFace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_2

    const-string v0, "\u767b\u9646\u6210\u529f"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/SmsLogin;->initToast(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->updateLoginInfo()V

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->setResult(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "\u767b\u9646\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/SmsLogin;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->checkLoginFormat()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/SmsRegNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsLogin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/SmsFindPass;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a029c
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->setContentView(I)V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lop;

    invoke-direct {v0, p0}, Lop;-><init>(Lcn/apppark/vertify/activity/persion/SmsLogin;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsLogin;->mHandler:Lop;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsLogin;->initWidget()V

    return-void
.end method
