.class public final Lpa;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V
    .locals 0

    iput-object p1, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;Lox;)V
    .locals 0

    invoke-direct {p0, p1}, Lpa;-><init>(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

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
    return-void

    :pswitch_0
    iget-object v1, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->c(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/mcd/widget/PullDownListView4;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListView4;->onFootRefreshComplete()V

    iget-object v1, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->d(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/vertify/adapter/PersonLbsMsgAdapter;

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
    iget-object v0, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->e(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v0

    const v1, 0x7f080025

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "255"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/apppark/mcd/widget/LoadDataProgress;->showError(IZZLjava/lang/String;)V

    iget-object v0, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->f(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v1}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->e(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)Lcn/apppark/mcd/widget/LoadDataProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    new-instance v1, Lpb;

    invoke-direct {v1, p0}, Lpb;-><init>(Lpa;)V

    invoke-virtual {v1}, Lpb;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserDyn;->parseJson2List(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->a(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lpa;->a:Lcn/apppark/vertify/activity/persion/PersonLbsMsg;

    invoke-static {v0}, Lcn/apppark/vertify/activity/persion/PersonLbsMsg;->g(Lcn/apppark/vertify/activity/persion/PersonLbsMsg;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
