.class public final Ljr;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)V
    .locals 0

    iput-object p1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljn;)V
    .locals 0

    invoke-direct {p0, p1}, Ljr;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x3

    const/4 v2, 0x2

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
    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->onFootRefreshComplete()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadFail(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadSuccess(I)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iget-object v2, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->c(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/jsonparse/RssParser;->parseRss(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->d(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    new-instance v1, Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    iget-object v2, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->f(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->g(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    move-result-object v3

    iget-object v4, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/apppark/vertify/adapter/DynRss5003Adapter;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Lcn/apppark/vertify/adapter/DynRss5003Adapter;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->d(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->setAdapter(Landroid/widget/BaseAdapter;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v0, v5, v5}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->onFootNodata(II)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->d(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v0, v3}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadFail(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v1, v3}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->loadSuccess(I)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_1
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iget-object v2, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->c(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/apppark/mcd/util/jsonparse/RssParser;->parseRss(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->e(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->d(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/vertify/adapter/DynRss5003Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/adapter/DynRss5003Adapter;->notifyDataSetChanged()V

    :cond_6
    iget-object v0, p0, Ljr;->a:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v0, v5, v5}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->onFootNodata(II)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
