.class public final Llr;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V
    .locals 0

    iput-object p1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Llj;)V
    .locals 0

    invoke-direct {p0, p1}, Llr;-><init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

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

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->j(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/widget/PullDownListViewAutoLoad;->onFootRefreshComplete()V

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->k(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->k(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/app/Dialog;

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
    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-virtual {v0, v3}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadFail(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->d(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-virtual {v1, v3}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadSuccess(I)V

    :cond_3
    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Ljava/lang/String;)V

    goto :goto_0

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
    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-virtual {v0, v4}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadFail(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-virtual {v1, v4}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->loadSuccess(I)V

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->l(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I

    move-result v0

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->m(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->b(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;I)I

    :goto_1
    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->n(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->l(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->l(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->changePoint(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->c(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;I)I

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-direct {v1}, Lcn/apppark/mcd/vo/dyn/DynProductVo;-><init>()V

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_tabPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setStyle_tabPosition(Ljava/lang/String;)V

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getStyle_groupInfoShow()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setStyle_groupInfoShow(I)V

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->a(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;->getShop()Lcn/apppark/mcd/vo/dyn/DynProductVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->getSys_moduleType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setSys_moduleType(I)V

    iget-object v0, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->m(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->o(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/STogetherReturnVo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/mcd/vo/dyn/DynProductVo;->setGroupId(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v3, Lcn/apppark/vertify/activity/free/dyn/STogetherDetail;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Llr;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->c(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
