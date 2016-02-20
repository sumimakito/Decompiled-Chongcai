.class public Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;
.super Lcn/apppark/vertify/activity/persion/SmsBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final WHAT_VERTIFY:I = 0xc


# instance fields
.field private final METHOD_VERTIFY:Ljava/lang/String;

.field private btn_back:Landroid/widget/Button;

.field private btn_getSmsCode:Landroid/widget/Button;

.field private btn_vertify:Lcn/apppark/mcd/widget/MyBtn;

.field private et_phone:Lcn/apppark/mcd/widget/MyEditText2;

.field private et_smscode:Lcn/apppark/mcd/widget/MyEditText2;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;-><init>()V

    const-string v0, "confirmOldPhone"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->METHOD_VERTIFY:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkResultShowRet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Lcn/apppark/mcd/widget/MyEditText2;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private checkFormat(ZZ)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->initToast(Ljava/lang/String;I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->chekMobilePhone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_smscode:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_picCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u8bf7\u8f93\u5165\u56fe\u5f62\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_getSmsCode:Landroid/widget/Button;

    return-object v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02dc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyBtn;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_vertify:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_vertify:Lcn/apppark/mcd/widget/MyBtn;

    const-string v1, "\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyBtn;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_vertify:Lcn/apppark/mcd/widget/MyBtn;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyBtn;->setBgColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_vertify:Lcn/apppark/mcd/widget/MyBtn;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/MyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->isPhoneOpen(Z)V

    const v0, 0x7f0a02da

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_smscode:Lcn/apppark/mcd/widget/MyEditText2;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->phone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->setText(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a02db

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_getSmsCode:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_getSmsCode:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_getSmsCode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_vertify:Lcn/apppark/mcd/widget/MyBtn;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/MyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_codeSure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->btn_codeCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lpo;

    invoke-direct {v0, p0}, Lpo;-><init>(Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private vertifyPhone(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smsCode"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_smscode:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->mHandler:Landroid/os/Handler;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/sms.ws"

    const-string v7, "confirmOldPhone"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkFormat(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->vertifyPhone(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v1, v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkFormat(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->needPicCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->showPicCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkPhoneState(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->ll_code:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v1, v1}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->checkFormat(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->getSmsCode(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->ll_code:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->getPicCode(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a02b9 -> :sswitch_4
        0x7f0a02ba -> :sswitch_3
        0x7f0a02bc -> :sswitch_5
        0x7f0a02d8 -> :sswitch_0
        0x7f0a02db -> :sswitch_2
        0x7f0a02dc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->phone:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->initCodeWidget()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->initWidget()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsVertifyPhone;->countdown()V

    return-void
.end method
