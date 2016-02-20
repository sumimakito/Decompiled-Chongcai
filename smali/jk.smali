.class public final Ljk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)V
    .locals 0

    iput-object p1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Ljh;)V
    .locals 0

    invoke-direct {p0, p1}, Ljk;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x0

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
    return-void

    :pswitch_0
    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootRefreshComplete()V

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->d(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->d(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-virtual {v0, v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->loadFail(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljl;

    invoke-direct {v1, p0}, Ljl;-><init>(Ljk;)V

    invoke-virtual {v1}, Ljl;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->g(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-virtual {v0, v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->loadSuccess(I)V

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->i(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->g(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    new-instance v0, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    iget-object v2, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->j(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->k(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/vo/base/FreePageVo;

    move-result-object v3

    iget-object v4, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->l(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v4

    iget-object v5, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v5}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V

    invoke-static {v6, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Lcn/apppark/vertify/adapter/DynProduct5005Adapter;)Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v0

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->i(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->m(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)I

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v1

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->g(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->i(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->loadFail(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->loadSuccess(I)V

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->m(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)I

    new-instance v1, Ljm;

    invoke-direct {v1, p0}, Ljm;-><init>(Ljk;)V

    invoke-virtual {v1}, Ljm;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->g(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->g(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->i(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/vertify/adapter/DynProduct5005Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynProduct5005Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->setSelection(I)V

    :cond_9
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v1

    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Ljk;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootNodata(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
