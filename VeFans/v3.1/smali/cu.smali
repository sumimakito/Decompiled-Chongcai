.class public final Lcu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V
    .locals 0

    iput-object p1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/vertify/activity/buy/BuyMsgCommentList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcu;-><init>(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

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
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onFootRefreshComplete()V

    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

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
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const-string v3, "255"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lcv;

    invoke-direct {v1, p0}, Lcv;-><init>(Lcu;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->f(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lcw;

    invoke-direct {v1, p0}, Lcw;-><init>(Lcu;)V

    invoke-virtual {v1}, Lcw;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->b(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->h(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)I

    :cond_4
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    const-string v1, "\u6682\u65e0\u56de\u590d"

    invoke-virtual {v0, v1, v4}, Lcn/apppark/ckj10185912/HQCHApplication;->initToast(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    iget-object v2, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->c(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v0

    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView3;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    iget-object v2, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView3;->onHeadRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcx;

    invoke-direct {v1, p0}, Lcx;-><init>(Lcu;)V

    invoke-virtual {v1}, Lcx;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->h(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)I

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->g(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->e(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyMsgCommentAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    iget-object v1, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->d(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Lcn/apppark/mcd/widget/PullDownListView3;

    move-result-object v1

    iget-object v2, p0, Lcu;->a:Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;->a(Lcn/apppark/vertify/activity/buy/BuyMsgCommentList;Lcn/apppark/mcd/widget/PullDownListView3;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
