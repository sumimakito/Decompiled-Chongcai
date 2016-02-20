.class public final Ldw;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V
    .locals 0

    iput-object p1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ldr;)V
    .locals 0

    invoke-direct {p0, p1}, Ldw;-><init>(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

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

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v2, "\u786e\u8ba4\u6536\u8d27\u5931\u8d25"

    const-string v3, "\u786e\u8ba4\u6536\u8d27\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->setResult(I)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->finish()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Ldx;

    invoke-direct {v1, p0}, Ldx;-><init>(Ldw;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->f(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)I

    new-instance v0, Ldy;

    invoke-direct {v0, p0}, Ldy;-><init>(Ldw;)V

    invoke-virtual {v0}, Ldy;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    const-string v3, "contact"

    invoke-static {v1, v0, v3}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2VoByNode(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Lcn/apppark/mcd/vo/buy/BuyAddressVo;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    iget-object v2, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-class v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Lcn/apppark/mcd/vo/buy/BuyOrderVo;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->g(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->h(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->g(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->i(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->g(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->j(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->g(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyAddressVo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyAddressVo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->k(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->l(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

    :cond_4
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->m(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->o(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->n(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    iget-object v2, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->p(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->o(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->q(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->m(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->o(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->n(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->m(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderDetailAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v2, "\u53d6\u6d88\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u53d6\u6d88\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->setResult(I)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->finish()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

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

    if-eqz v1, :cond_6

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->a(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->b(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v1, "\u652f\u4ed8\u5b9d\u8d26\u53f7\u65e0\u6548\uff0c\u8bf7\u68c0\u67e5"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-class v0, Lcn/apppark/mcd/vo/buy/BuySignVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/buy/BuyBaseReturnVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuySignVo;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuySignVo;->getSign()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u7b7e\u540d\u4e3a\u7a7a"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const/4 v2, 0x7

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuySignVo;->getSignStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/buy/BuySignVo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->payZFB(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->e(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;I)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    const-string v3, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->k(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->l(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->setResult(I)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->finish()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->c(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    const-string v2, "\u8ba2\u5355\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u8ba2\u5355\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->d(Lcn/apppark/vertify/activity/buy/BuyOrderDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->setResult(I)V

    iget-object v0, p0, Ldw;->a:Lcn/apppark/vertify/activity/buy/BuyOrderDetail;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyOrderDetail;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
