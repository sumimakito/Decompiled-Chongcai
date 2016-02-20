.class public Lcn/apppark/vertify/activity/persion/FindPass;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FINDPASS_WHAT:I = 0x1


# instance fields
.field private final METHOD:Ljava/lang/String;

.field private btn_back:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private et_email:Landroid/widget/EditText;

.field private et_phone:Landroid/widget/EditText;

.field private handler:Lnb;

.field private isFinish:Z

.field private ll_email:Landroid/widget/LinearLayout;

.field private tv_tipsuccess:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "findPassword"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->METHOD:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->isFinish:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/FindPass;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/FindPass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/FindPass;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/FindPass;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->isFinish:Z

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/FindPass;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->tv_tipsuccess:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/FindPass;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->ll_email:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private checkFormat()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/FindPass;->initToast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7bb1"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/FindPass;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->chekMobilePhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u624b\u673a\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/FindPass;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u90ae\u7bb1\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p0, v0, v2}, Lcn/apppark/vertify/activity/persion/FindPass;->initToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->isFinish:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/apppark/vertify/activity/persion/FindPass;->isFinish:Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/FindPass;->subData(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/FindPass;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_sure:Landroid/widget/Button;

    return-object v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a028a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_sure:Landroid/widget/Button;

    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_phone:Landroid/widget/EditText;

    const v0, 0x7f0a028d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->et_email:Landroid/widget/EditText;

    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->tv_tipsuccess:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->tv_tipsuccess:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a028b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->ll_email:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_sure:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->btn_back:Landroid/widget/Button;

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

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "email"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/FindPass;->handler:Lnb;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/FindPass;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "findPassword"

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

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/FindPass;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/FindPass;->checkFormat()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0289
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->setContentView(I)V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/FindPass;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Lnb;

    invoke-direct {v0, p0}, Lnb;-><init>(Lcn/apppark/vertify/activity/persion/FindPass;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/FindPass;->handler:Lnb;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/FindPass;->initWidget()V

    return-void
.end method
