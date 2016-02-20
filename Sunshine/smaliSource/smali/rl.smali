.class public final Lrl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/soft/SoftList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/soft/SoftList;)V
    .locals 0

    iput-object p1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/vertify/activity/soft/SoftList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lrl;-><init>(Lcn/apppark/vertify/activity/soft/SoftList;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

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
    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->c(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onFootRefreshComplete()V

    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->d(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/vertify/adapter/SoftAdapter;

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
    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->e(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->e(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lrm;

    invoke-direct {v1, p0}, Lrm;-><init>(Lrl;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->e(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lrn;

    invoke-direct {v1, p0}, Lrn;-><init>(Lrl;)V

    invoke-virtual {v1}, Lrn;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->g(Lcn/apppark/vertify/activity/soft/SoftList;)I

    :cond_4
    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->d(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    new-instance v1, Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v2, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/SoftList;->h(Lcn/apppark/vertify/activity/soft/SoftList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v3}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/adapter/SoftAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/vertify/adapter/SoftAdapter;)Lcn/apppark/vertify/adapter/SoftAdapter;

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->c(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->d(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->c(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    iget-object v2, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->d(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->c(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onHeadRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lro;

    invoke-direct {v1, p0}, Lro;-><init>(Lrl;)V

    invoke-virtual {v1}, Lro;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->g(Lcn/apppark/vertify/activity/soft/SoftList;)I

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->f(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/soft/SoftList;->d(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/vertify/adapter/SoftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/SoftAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    iget-object v1, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/soft/SoftList;->c(Lcn/apppark/vertify/activity/soft/SoftList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    iget-object v2, p0, Lrl;->a:Lcn/apppark/vertify/activity/soft/SoftList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/soft/SoftList;->b(Lcn/apppark/vertify/activity/soft/SoftList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/soft/SoftList;->a(Lcn/apppark/vertify/activity/soft/SoftList;Lcn/apppark/mcd/widget/PullDownListView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
