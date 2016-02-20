.class public final Ljx;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 0

    iput-object p1, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljx;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

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

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->g(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/PullDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView;->onFootRefreshComplete()V

    iget-object v1, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->h(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/vertify/adapter/DynSearch5007Adapter;

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
    iget-object v0, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->i(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(IZZLjava/lang/String;)V

    iget-object v0, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->i(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Ljy;

    invoke-direct {v1, p0}, Ljy;-><init>(Ljx;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->i(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Ljz;

    invoke-direct {v1, p0}, Ljz;-><init>(Ljx;)V

    invoke-virtual {v1}, Ljz;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-string v3, "productItems"

    const-string v4, "productCount"

    invoke-static {v0, v1, v3, v4}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    const-string v3, "infoItems"

    const-string v4, "infoCount"

    invoke-static {v0, v1, v3, v4}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->b(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Ljx;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->j(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
