.class public final Loh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersionCollection;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V
    .locals 0

    iput-object p1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/PersionCollection;Loa;)V
    .locals 0

    invoke-direct {p0, p1}, Loh;-><init>(Lcn/apppark/vertify/activity/persion/PersionCollection;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const v4, 0x7f080025

    const/4 v3, 0x0

    const/4 v2, 0x1

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
    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->i(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->j(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/adapter/TCollectionAdapter;

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
    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Loi;

    invoke-direct {v1, p0}, Loi;-><init>(Loh;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Loj;

    invoke-direct {v1, p0}, Loj;-><init>(Loh;)V

    invoke-virtual {v1}, Loj;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;Ljava/util/ArrayList;)V

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    iget-object v2, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->i(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->l(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->m(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lok;

    invoke-direct {v1, p0}, Lok;-><init>(Loh;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lol;

    invoke-direct {v1, p0}, Lol;-><init>(Loh;)V

    invoke-virtual {v1}, Lol;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->b(Lcn/apppark/vertify/activity/persion/PersionCollection;Ljava/util/ArrayList;)V

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    iget-object v2, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->l(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->n(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->o(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lom;

    invoke-direct {v1, p0}, Lom;-><init>(Loh;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lon;

    invoke-direct {v1, p0}, Lon;-><init>(Loh;)V

    invoke-virtual {v1}, Lon;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->c(Lcn/apppark/vertify/activity/persion/PersionCollection;Ljava/util/ArrayList;)V

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    iget-object v2, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->n(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->b(Lcn/apppark/vertify/activity/persion/PersionCollection;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->m(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersionCollection;->k(Lcn/apppark/vertify/activity/persion/PersionCollection;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    iget-object v1, p0, Loh;->a:Lcn/apppark/vertify/activity/persion/PersionCollection;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersionCollection;->c(Lcn/apppark/vertify/activity/persion/PersionCollection;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/persion/PersionCollection;->a(Lcn/apppark/vertify/activity/persion/PersionCollection;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
