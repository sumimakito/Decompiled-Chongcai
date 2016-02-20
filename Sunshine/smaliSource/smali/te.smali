.class public final Lte;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V
    .locals 0

    iput-object p1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Lta;)V
    .locals 0

    invoke-direct {p0, p1}, Lte;-><init>(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)V

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
    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->k(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->l(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/vertify/adapter/TMyTopicAdapter;

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
    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Ltf;

    invoke-direct {v1, p0}, Ltf;-><init>(Lte;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Ltg;

    invoke-direct {v1, p0}, Ltg;-><init>(Lte;)V

    invoke-virtual {v1}, Ltg;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    iget-object v2, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->k(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->n(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->o(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/vertify/adapter/TMyCommentAdapter;

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
    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    new-instance v1, Lth;

    invoke-direct {v1, p0}, Lth;-><init>(Lte;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->setInterfaceRef(Lcn/apppark/mcd/widget/IReloadDataProgress;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lti;

    invoke-direct {v1, p0}, Lti;-><init>(Lte;)V

    invoke-virtual {v1}, Lti;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/vo/buy/JsonParserBuy;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->b(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    iget-object v2, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->n(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->a(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;Lcn/apppark/mcd/widget/PullDownListView4;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->f(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->o(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/vertify/adapter/TMyCommentAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->m(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->show(I)V

    iget-object v0, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    iget-object v1, p0, Lte;->a:Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;

    invoke-static {v1}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->d(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;->b(Lcn/apppark/vertify/activity/tieba/TMytopicAndComment;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
