.class public final Lfx;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)V
    .locals 0

    iput-object p1, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Lfv;)V
    .locals 0

    invoke-direct {p0, p1}, Lfx;-><init>(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lfy;

    invoke-direct {v1, p0}, Lfy;-><init>(Lfx;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lfz;

    invoke-direct {v1, p0}, Lfz;-><init>(Lfx;)V

    invoke-virtual {v1}, Lfz;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->d(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->d(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u8ba2\u5355\u63d0\u4ea4\u5931\u8d25"

    invoke-virtual {v0, v1, v3}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->e(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->e(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    iget-object v2, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->f(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->d(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->h(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->g(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->i(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v1, Lcn/apppark/mcd/vo/buy/PayResult;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcn/apppark/mcd/vo/buy/PayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const-string v1, "\u652f\u4ed8\u6210\u529f,\u8bf7\u5230\u6211\u7684\u8ba2\u5355\u4e2d\u67e5\u8be2"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->j(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->setResult(I)V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->finish()V

    goto/16 :goto_0

    :cond_4
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->b(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->c(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const/4 v1, 0x5

    iget-object v2, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->k(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->a(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->l(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const-string v1, "\u652f\u4ed8\u5b9d\u8d26\u53f7\u65e0\u6548\uff0c\u8bf7\u68c0\u67e5"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->d(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->m(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-class v1, Lcn/apppark/mcd/vo/buy/BuySignVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuySignVo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuySignVo;->getSign()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u7b7e\u540d\u4e3a\u7a7a"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->e(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const/4 v2, 0x7

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuySignVo;->getSignStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuySignVo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->payZFB(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->f(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;Ljava/lang/String;I)V

    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->n(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lfx;->a:Lcn/apppark/vertify/activity/buy/BuySubOrderResult;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuySubOrderResult;->o(Lcn/apppark/vertify/activity/buy/BuySubOrderResult;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
