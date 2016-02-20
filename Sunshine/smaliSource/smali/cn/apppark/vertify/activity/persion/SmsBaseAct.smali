.class public Lcn/apppark/vertify/activity/persion/SmsBaseAct;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;


# static fields
.field protected static final WHAT_PHONESTATE:I = 0x3

.field protected static final WHAT_PICCODE:I = 0x1

.field protected static final WHAT_SMSCODE:I = 0x2

.field protected static final WHAT_WAITTIME:I = 0x4


# instance fields
.field protected METHOD_PHONESTATE:Ljava/lang/String;

.field protected METHOD_PICCODE:Ljava/lang/String;

.field protected METHOD_SMS:Ljava/lang/String;

.field protected btn_codeCancel:Landroid/widget/Button;

.field protected btn_codeSure:Landroid/widget/Button;

.field protected et_picCode:Landroid/widget/EditText;

.field protected img_code:Lcn/apppark/mcd/widget/RemoteImageView;

.field protected ll_code:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field protected needPicCode:Ljava/lang/String;

.field public waitSecond:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "getImageCode"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->METHOD_PICCODE:Ljava/lang/String;

    const-string v0, "sendSMS"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->METHOD_SMS:Ljava/lang/String;

    const-string v0, "checkPhoneState"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->METHOD_PHONESTATE:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->needPicCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkPhoneState(Ljava/lang/String;I)V
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v1, "10185912"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phoneCheckType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->mHandler:Landroid/os/Handler;

    const-string v3, "json"

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/sms.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->METHOD_PHONESTATE:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public checkPhoneStateResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u6570\u636e\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->getRetResult(Ljava/lang/String;Ljava/lang/String;)Lcn/apppark/mcd/vo/base/RetVo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getRetFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getNeedImageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->needPicCode:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->showPicCode(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0, p2}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->getSmsCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public checkPicResult(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "\u56fe\u7247\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {p0, p1, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    invoke-static {p1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyRegVo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuyRegVo;->getImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkSmsCodeResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5931\u8d25"

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->getRetResult(Ljava/lang/String;Ljava/lang/String;)Lcn/apppark/mcd/vo/base/RetVo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getRetFlag()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcn/apppark/ckj10185912/YYGYContants;->SMS_LAST_SENDTIME:J

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getWaitTime()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    sput v1, Lcn/apppark/ckj10185912/YYGYContants;->SMS_COUTTIME:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->countdown()V

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->initToast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "1"

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getNeedImageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "1"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->needPicCode:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->showPicCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/RetVo;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->initToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected countdown()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/apppark/ckj10185912/YYGYContants;->SMS_LAST_SENDTIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    if-ltz v0, :cond_0

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->SMS_COUTTIME:I

    if-ge v0, v1, :cond_0

    if-nez v0, :cond_1

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->SMS_COUTTIME:I

    :goto_0
    iput v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->waitSecond:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpj;

    invoke-direct {v1, p0}, Lpj;-><init>(Lcn/apppark/vertify/activity/persion/SmsBaseAct;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->SMS_COUTTIME:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method protected getPicCode(Ljava/lang/String;)V
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v1, "10185912"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->mHandler:Landroid/os/Handler;

    const-string v3, "json"

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/sms.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->METHOD_PICCODE:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method protected getSmsCode(Ljava/lang/String;)V
    .locals 8

    const-string v0, "10185912"

    invoke-static {p1, v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->encryptByMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appId"

    const-string v2, "10185912"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imageCode"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->et_picCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "verifyCode"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->mHandler:Landroid/os/Handler;

    const-string v3, "json"

    invoke-virtual {p0, v4}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/sms.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->METHOD_SMS:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method protected initCodeWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->ll_code:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02bb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->et_picCode:Landroid/widget/EditText;

    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->btn_codeSure:Landroid/widget/Button;

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->btn_codeCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->btn_codeSure:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->btn_codeCancel:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->loadDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->waitSecond:I

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onDestroy()V

    return-void
.end method

.method protected showPicCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->et_picCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->ll_code:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->getPicCode(Ljava/lang/String;)V

    return-void
.end method
