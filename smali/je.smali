.class public final Lje;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V
    .locals 0

    iput-object p1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Lix;)V
    .locals 0

    invoke-direct {p0, p1}, Lje;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->onFootRefreshComplete()V

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Landroid/app/Dialog;

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
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v0, v6}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->loadFail(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljf;

    invoke-direct {v1, p0}, Ljf;-><init>(Lje;)V

    invoke-virtual {v1}, Ljf;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->g(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v2, v6}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->loadSuccess(I)V

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    const-string v3, "item2"

    invoke-static {v0, v1, v3}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->i(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V

    :cond_4
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->j(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lcn/apppark/vertify/adapter/DynProduct5013Adapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    new-instance v1, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->k(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v3

    iget-object v4, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynProductVo;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Lcn/apppark/vertify/adapter/DynProduct5013Adapter;)Lcn/apppark/vertify/adapter/DynProduct5013Adapter;

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->j(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lcn/apppark/vertify/adapter/DynProduct5013Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->setAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->l(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)I

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->j(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lcn/apppark/vertify/adapter/DynProduct5013Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v0, v5, v5}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->onFootNodata(II)V

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
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->loadFail(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->loadSuccess(I)V

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->l(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)I

    new-instance v1, Ljg;

    invoke-direct {v1, p0}, Ljg;-><init>(Lje;)V

    invoke-virtual {v1}, Ljg;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->a(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    const-string v3, "item2"

    invoke-static {v0, v1, v3}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseItem2Vo(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->i(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->h(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->j(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lcn/apppark/vertify/adapter/DynProduct5013Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynProduct5013Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v0, v5}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->setSelection(I)V

    :cond_9
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getCount()I

    move-result v0

    iget-object v2, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->e(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->onFootNodata(II)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-virtual {v0, v5, v5}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->onFootNodata(II)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->m(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)I

    move-result v0

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0, v4}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->b(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;I)I

    :goto_2
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v0, v0, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c:Landroid/widget/Gallery;

    iget-object v1, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->m(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0, v5}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;I)I

    goto :goto_2

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "id"

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->c(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->n(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductReturnVo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lje;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->f(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
