.class public final Lcc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V
    .locals 0

    iput-object p1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Lcn/apppark/vertify/activity/buy/BuyBuyCar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcc;-><init>(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "soresult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->h(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    const v2, 0x7f080025

    const-string v3, "255"

    invoke-virtual {v1, v2, v4, v0, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->h(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lcd;

    invoke-direct {v1, p0}, Lcd;-><init>(Lcc;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->h(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v2, Lce;

    invoke-direct {v2, p0}, Lce;-><init>(Lcc;)V

    invoke-virtual {v2}, Lce;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1, v2}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->i(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->i(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v2, "\u8d2d\u7269\u8f66\u662f\u7a7a\u7684"

    invoke-virtual {v1, v2, v0}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->j(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->k(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->i(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->l(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget-object v4, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;-><init>(Landroid/content/Context;Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->m(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->setTotalPrice(Ljava/util/ArrayList;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->j(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->k(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->i(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->e(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2, v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Z)Z

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    const-string v3, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v4, "\u5220\u9664\u6210\u529f"

    invoke-static {v2, v1, v3, v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->g(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->setTotalPrice(Ljava/util/ArrayList;)Ljava/lang/String;

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->updateChangeStatus()V

    :cond_6
    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->j(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->k(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->j(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->k(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->e(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Z)Z

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    const-string v2, "\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u8bf7\u6838\u5bf9\u8ba2\u5355\u4fe1\u606f"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->b(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->l(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyOrderTemp;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->finish()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->e(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v2, v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Z)Z

    iget-object v2, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    const-string v3, "\u4fdd\u5b58\u5931\u8d25"

    const-string v4, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {v2, v1, v3, v4}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->c(Lcn/apppark/vertify/activity/buy/BuyBuyCar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    iget-object v1, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->a(Lcn/apppark/vertify/activity/buy/BuyBuyCar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/apppark/mcd/vo/buy/BuyOrderVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/buy/BuyOrderVo;->setOldNumber(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcc;->a:Lcn/apppark/vertify/activity/buy/BuyBuyCar;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/BuyBuyCar;->updateChangeStatus()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
