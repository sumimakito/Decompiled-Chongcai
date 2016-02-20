.class public Lcn/apppark/vertify/activity/persion/SmsRegNew;
.super Lcn/apppark/vertify/activity/persion/SmsBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private METHOD_REG:Ljava/lang/String;

.field private final WHAT_REG:I

.field private btn_SmsCode:Landroid/widget/Button;

.field private btn_back:Landroid/widget/Button;

.field private btn_reg:Lcn/apppark/mcd/widget/MyBtn;

.field private et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

.field private et_password:Lcn/apppark/mcd/widget/MyEditText2;

.field private et_phone:Lcn/apppark/mcd/widget/MyEditText2;

.field private et_smsCode:Landroid/widget/EditText;

.field private regVo:Lcn/apppark/mcd/vo/buy/BuyRegVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;-><init>()V

    const-string v0, "smsRegist"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->METHOD_REG:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->WHAT_REG:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsRegNew;Lcn/apppark/mcd/vo/buy/BuyRegVo;)Lcn/apppark/mcd/vo/buy/BuyRegVo;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->regVo:Lcn/apppark/mcd/vo/buy/BuyRegVo;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/SmsRegNew;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/widget/MyEditText2;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private checkLoginFormat(ZZ)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->chekMobilePhone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u8bf7\u8f93\u5165\u6635\u79f0"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_3

    const-string v1, "\u6635\u79f0\u5fc5\u987b\u5c0f\u4e8e10\u4e2a\u5b57\u7b26"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "\u5bc6\u7801\u4e3a6-12\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_smsCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_picCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNullWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u8bf7\u8f93\u5165\u56fe\u5f62\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/vo/buy/BuyRegVo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->regVo:Lcn/apppark/mcd/vo/buy/BuyRegVo;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/mcd/widget/MyEditText2;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

    return-object v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private initWidget()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02c1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyBtn;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_reg:Lcn/apppark/mcd/widget/MyBtn;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_reg:Lcn/apppark/mcd/widget/MyBtn;

    const-string v1, "\u7acb\u5373\u6ce8\u518c"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyBtn;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_reg:Lcn/apppark/mcd/widget/MyBtn;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1}, Lcn/apppark/mcd/util/FunctionPublic;->convertColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyBtn;->setBgColor(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_reg:Lcn/apppark/mcd/widget/MyBtn;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/MyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_SmsCode:Landroid/widget/Button;

    const v0, 0x7f0a02bb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_back:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_SmsCode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_reg:Lcn/apppark/mcd/widget/MyBtn;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/MyBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02bd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

    const v0, 0x7f0a02be

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/MyEditText2;->isPassOpen(Z)V

    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_smsCode:Landroid/widget/EditText;

    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/MyEditText2;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/MyEditText2;->isPhoneOpen(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

    const-string v1, "\u6ce8\u518c\u540e\u4e0d\u53ef\u4fee\u6539"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->setHint(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    const-string v1, "6-10\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->setHint(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    const-string v1, "\u8bf7\u8f93\u5165\u60a8\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyEditText2;->setHint(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->img_code:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_codeSure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_codeCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Loq;

    invoke-direct {v0, p0}, Loq;-><init>(Lcn/apppark/vertify/activity/persion/SmsRegNew;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic j(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic n(Lcn/apppark/vertify/activity/persion/SmsRegNew;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->btn_SmsCode:Landroid/widget/Button;

    return-object v0
.end method

.method private reg(I)V
    .locals 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_password:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickName"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_nikeName:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smsCode"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_smsCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "registTime"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->mHandler:Landroid/os/Handler;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/sms.ws"

    iget-object v7, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->METHOD_REG:Ljava/lang/String;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v1, v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkLoginFormat(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->reg(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v2, v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkLoginFormat(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->needPicCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->showPicCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkPhoneState(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->ll_code:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v2, v1}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->checkLoginFormat(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getSmsCode(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->ll_code:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/SmsRegNew;->et_phone:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/MyEditText2;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->getPicCode(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a02a3 -> :sswitch_4
        0x7f0a02a4 -> :sswitch_3
        0x7f0a02a6 -> :sswitch_5
        0x7f0a02bb -> :sswitch_0
        0x7f0a02c0 -> :sswitch_2
        0x7f0a02c1 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/persion/SmsBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initCodeWidget()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->initWidget()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/SmsRegNew;->countdown()V

    return-void
.end method
