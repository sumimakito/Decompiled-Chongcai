.class public final Lpw;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/Soft;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;)V
    .locals 0

    iput-object p1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/activity/soft/Soft$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lpw;-><init>(Lcn/apppark/vertify/activity/soft/Soft;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "soresult"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez v6, :cond_1

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "recommend"

    const-string v5, ""

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->p(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView2;->autoHeadRefresh()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "recommend"

    const-string v5, ""

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Lpx;

    invoke-direct {v0, p0}, Lpx;-><init>(Lpw;)V

    invoke-virtual {v0}, Lpx;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView2;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/lang/String;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView2;->onFootNodata(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView2;->onFootRefreshComplete()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView2;->onHeadRefreshComplete()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->p(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v2, 0x7f080025

    const-string v3, "255"

    invoke-virtual {v0, v2, v1, v4, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->p(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lpz;

    invoke-direct {v1, p0}, Lpz;-><init>(Lpw;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->p(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v0, Lqa;

    invoke-direct {v0, p0}, Lqa;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqa;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->k(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string v0, "recom"

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->u(Lcn/apppark/vertify/activity/soft/Soft;)I

    :cond_5
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView2;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v1

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView2;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView2;->onHeadRefreshComplete()V

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqb;

    invoke-direct {v0, p0}, Lqb;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqb;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "recom"

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->u(Lcn/apppark/vertify/activity/soft/Soft;)I

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->r(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->t(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->q(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView2;

    move-result-object v1

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->l(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView2;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    if-nez v6, :cond_8

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "downTop"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->autoHeadRefresh()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "downTop"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Lqc;

    invoke-direct {v0, p0}, Lqc;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqc;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->onFootRefreshComplete()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Z)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqd;

    invoke-direct {v0, p0}, Lqd;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqd;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_a
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->f(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v0

    if-ne v0, v1, :cond_b

    const-string v0, "down"

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->x(Lcn/apppark/vertify/activity/soft/Soft;)I

    :cond_c
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_2
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqe;

    invoke-direct {v0, p0}, Lqe;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqe;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "down"

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->x(Lcn/apppark/vertify/activity/soft/Soft;)I

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->w(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->v(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->m(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_6
    if-nez v6, :cond_f

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "need"

    const-string v5, ""

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->autoHeadRefresh()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    const-string v3, "need"

    const-string v5, ""

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;IILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Lqf;

    invoke-direct {v0, p0}, Lqf;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqf;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcn/apppark/mcd/widget/PullDownListView;->onFootNodata(II)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->onFootRefreshComplete()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->b(Lcn/apppark/vertify/activity/soft/Soft;Z)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqg;

    invoke-direct {v0, p0}, Lqg;-><init>(Lpw;)V

    invoke-virtual {v0}, Lqg;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/soft/Soft;->e(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_11
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->i(Lcn/apppark/vertify/activity/soft/Soft;)I

    move-result v0

    if-ne v0, v1, :cond_12

    const-string v0, "must"

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_12
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->A(Lcn/apppark/vertify/activity/soft/Soft;)I

    :cond_13
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->s(Lcn/apppark/vertify/activity/soft/Soft;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/Soft;->c(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_3
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lpy;

    invoke-direct {v0, p0}, Lpy;-><init>(Lpw;)V

    invoke-virtual {v0}, Lpy;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v6, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/soft/Soft;->d(Lcn/apppark/vertify/activity/soft/Soft;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    const-string v0, "must"

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0, v6, v1}, Lcn/apppark/mcd/util/file/PrivateFileReadSave;->save(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->A(Lcn/apppark/vertify/activity/soft/Soft;)I

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->z(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_15
    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/Soft;->g(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    iget-object v1, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/Soft;->y(Lcn/apppark/vertify/activity/soft/Soft;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    iget-object v2, p0, Lpw;->a:Lcn/apppark/vertify/activity/soft/Soft;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/Soft;->n(Lcn/apppark/vertify/activity/soft/Soft;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/Soft;->a(Lcn/apppark/vertify/activity/soft/Soft;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method
