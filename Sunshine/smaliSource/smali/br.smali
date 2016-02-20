.class public final Lbr;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyAddressList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V
    .locals 0

    iput-object p1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;Lcn/apppark/vertify/activity/buy/BuyAddressList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr;-><init>(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->g(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/SwipeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/SwipeListView;->onFootRefreshComplete()V

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->h(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x0

    const-string v3, "255"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->h(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lbs;

    invoke-direct {v1, p0}, Lbs;-><init>(Lbr;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->h(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lbt;

    invoke-direct {v1, p0}, Lbt;-><init>(Lbr;)V

    invoke-virtual {v1}, Lbt;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->j(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I

    :cond_4
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    iget-object v2, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v4}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->g(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/SwipeListView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/widget/SwipeListView;->getRightViewWidth()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->g(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/mcd/widget/SwipeListView;

    move-result-object v0

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    new-instance v1, Lbu;

    invoke-direct {v1, p0}, Lbu;-><init>(Lbr;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->setOnRightItemClickListener(Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItemClickListener;)V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    new-instance v1, Lbx;

    invoke-direct {v1, p0}, Lbx;-><init>(Lbr;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->setOnRightItem2ClickListener(Lcn/apppark/vertify/adapter/TMyHistoryAdapter$onRightItem2ClickListener;)V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->k(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lby;

    invoke-direct {v1, p0}, Lby;-><init>(Lbr;)V

    invoke-virtual {v1}, Lby;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->j(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->i(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->k(Lcn/apppark/vertify/activity/buy/BuyAddressList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1, v4}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;Z)Z

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->l(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    const-string v2, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->a(Lcn/apppark/vertify/activity/buy/BuyAddressList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->b(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->m(Lcn/apppark/vertify/activity/buy/BuyAddressList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lbr;->a:Lcn/apppark/vertify/activity/buy/BuyAddressList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyAddressList;->e(Lcn/apppark/vertify/activity/buy/BuyAddressList;)Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
