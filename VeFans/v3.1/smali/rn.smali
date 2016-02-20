.class public final Lrn;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    iput-object p1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;Lrh;)V
    .locals 0

    invoke-direct {p0, p1}, Lrn;-><init>(Lcn/apppark/vertify/activity/tieba/TMain;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

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
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->h(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->h(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onHeadRefreshComplete()V

    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->i(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->clearAnimation()V

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->c(Lcn/apppark/vertify/activity/tieba/TMain;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->j(Lcn/apppark/vertify/activity/tieba/TMain;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->k(Lcn/apppark/vertify/activity/tieba/TMain;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->l(Lcn/apppark/vertify/activity/tieba/TMain;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lro;

    invoke-direct {v1, p0}, Lro;-><init>(Lrn;)V

    invoke-virtual {v1}, Lro;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    const-string v4, "itemTop"

    invoke-static {v0, v1, v4}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseToListByNode(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMain;->m(Lcn/apppark/vertify/activity/tieba/TMain;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->b(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/tieba/TMain;->c(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->n(Lcn/apppark/vertify/activity/tieba/TMain;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1, v2}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;Z)Z

    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lrn;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TMain;->b(Lcn/apppark/vertify/activity/tieba/TMain;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
