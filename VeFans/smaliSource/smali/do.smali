.class public final Ldo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V
    .locals 0

    iput-object p1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ldj;)V
    .locals 0

    invoke-direct {p0, p1}, Ldo;-><init>(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

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

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->g(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onFootRefreshComplete()V

    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->g(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->h(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->i(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x0

    const-string v3, "255"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->i(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Ldp;

    invoke-direct {v1, p0}, Ldp;-><init>(Ldo;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->i(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Ldq;

    invoke-direct {v1, p0}, Ldq;-><init>(Ldo;)V

    invoke-virtual {v1}, Ldq;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->j(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1, v4}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Z)Z

    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->e(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    const-string v2, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const-string v3, "\u5220\u9664\u6210\u529f"

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->a(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->d(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->f(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->h(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyOrderManagerAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Ldo;->a:Lcn/apppark/vertify/activity/buy/BuyMyOrderList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMyOrderList;->k(Lcn/apppark/vertify/activity/buy/BuyMyOrderList;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
