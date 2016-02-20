.class public Lcn/apppark/vertify/activity/buy/BuySelectRemark;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn_back:Landroid/widget/Button;

.field private btn_offline:Landroid/widget/Button;

.field private btn_online:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private et_remark:Landroid/widget/EditText;

.field private isPayMoney:Ljava/lang/String;

.field private isPayinLine:Ljava/lang/String;

.field private ll_pay:Landroid/widget/LinearLayout;

.field private ll_remark:Landroid/widget/LinearLayout;

.field private operateType:I

.field private position:I

.field private remark:Ljava/lang/String;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    return-void
.end method

.method private changePayState()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->isPayinLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_online:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->isPayMoney:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_offline:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_online:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_offline:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private changeShowState()V
    .locals 3

    const/16 v2, 0x8

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->operateType:I

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REMARK:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u8d2d\u4e70\u5907\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->ll_pay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->remark:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->et_remark:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->operateType:I

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_SEL_PAYTYPE:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u65b9\u5f0f\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->et_remark:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->ll_remark:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->changePayState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88\u7406\u7531"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->ll_pay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->et_remark:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u53d6\u6d88\u8ba2\u5355\u7684\u539f\u56e0\uff0c\u5982\u679c\u4e0d\u9700\u8981\u586b\u5199\u53ef\u76f4\u63a5\u8fd4\u56de"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->ll_pay:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->ll_remark:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_sure:Landroid/widget/Button;

    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_online:Landroid/widget/Button;

    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_offline:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_sure:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    const v0, 0x7f0a011e

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->et_remark:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_online:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->btn_offline:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->changeShowState()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->operateType:I

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REASON:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->setResult(I)V

    :cond_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->finish()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->operateType:I

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REMARK:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->et_remark:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "remark"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "position"

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->position:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->finish()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "remark"

    iget-object v2, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->et_remark:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->finish()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "paytype"

    sget v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_OFFLINE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "position"

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->finish()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "paytype"

    sget v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->PAYTYPE_ONLINE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "position"

    iget v2, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a011a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->position:I

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "operatetype"

    sget v2, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_GET_REMARK:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->operateType:I

    iget v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->operateType:I

    sget v1, Lcn/apppark/vertify/activity/buy/BuyBaseParam;->OPERATE_SEL_PAYTYPE:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ispayinline"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->isPayinLine:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ispaymoney"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->isPayMoney:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->initWidget()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remark"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuySelectRemark;->remark:Ljava/lang/String;

    goto :goto_0
.end method
