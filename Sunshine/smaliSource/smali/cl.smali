.class public final Lcl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)V
    .locals 0

    iput-object p1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Lcf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcl;-><init>(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

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
    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->e(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onFootRefreshComplete()V

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->f(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

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
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->g(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const-string v2, "255"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->g(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lcm;

    invoke-direct {v1, p0}, Lcm;-><init>(Lcl;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->g(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lcn;

    invoke-direct {v1, p0}, Lcn;-><init>(Lcl;)V

    invoke-virtual {v1}, Lcn;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->h(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->h(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->b(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->h(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->i(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)I

    :cond_4
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->f(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    new-instance v1, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    iget-object v2, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v2}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->d(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v3}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->e(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v0

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->f(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/PullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->j(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->f(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->e(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/mcd/widget/PullDownListView;

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

    new-instance v1, Lco;

    invoke-direct {v1, p0}, Lco;-><init>(Lcl;)V

    invoke-virtual {v1}, Lco;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->h(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->h(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->i(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)I

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->h(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->f(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->j(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1, v3}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Z)Z

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->k(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "retFlag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    const-string v1, "\u5220\u9664\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->a(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Ljava/lang/String;I)V

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v1}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->l(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->f(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/buy/adapter/BuyCollectionMsgAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->m(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    const-string v1, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->b(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    const-string v2, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v2, v3}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->c(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcl;->a:Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;

    invoke-static {v0}, Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;->m(Lcn/apppark/vertify/activity/buy/BuyCollectionMsgList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
